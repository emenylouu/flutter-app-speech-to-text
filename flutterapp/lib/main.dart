import 'package:fe_flutterapp/details.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Questions List',
        theme: ThemeData(
          primarySwatch: Colors.teal,
        ),
        home: Center(
          child: MyHomePage(),
        ));
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Questions List'),
      ),
      body: _buildListView(context),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  ListView _buildListView(BuildContext context) {
    List questions = [
      "what is your name?",
      "what is your favourite food?",
      "what is happiness to you?",
      "what are you most passioned about?",
      "what is your biggest fear?",
      "what is your motivation?",
      "what is you hobby?",
      "what is you hobby?",
      "what inspires you the most?",
      "what's your last pet name?"
    ];
    return ListView.builder(
      itemCount: questions.length,
      itemBuilder: (context, index) {
        return Card(
            child: ListTile(
          subtitle: Text('Question $index'),
          title: Text(questions[index]),
          leading: Icon(Icons.question_answer),
          trailing: IconButton(
            icon: Icon(Icons.keyboard_arrow_right),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DetailPage(index)));
            },
          ),
        ));
      },
    );
  }
}
