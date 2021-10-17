import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var questionIndex = 0;
  var questions = [
    [
      'How was your trip to Azbakan?',
    ],
    [
      'Which old Hogwarts relic did Harry pull out of the Sorting Hat?',
      'Hufflepuff\'s Cup',
      'Slytherin\'s Locket',
      'The Sword of Gryffindor',
      'Ravenclaw\'s Diadem'
    ],
    [
      'What\'s your favorite movie?',
    ],
    [
      'What\'s your favorite dish?',
    ],
    [
      'What\'s your favorite spell?',
    ],
    [
      'What\'s your favorite professor?',
    ],
  ];
  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text('Hogwarts Sorting Hat'),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            Text(
              questions[questionIndex][0],
            ),
            ElevatedButton(
                child: Text(questions[questionIndex][0]),
                onPressed: answerQuestion),
            ElevatedButton(
                child: Text(questions[questionIndex][0]),
                onPressed: answerQuestion),
            ElevatedButton(
                child: Text(questions[questionIndex][0]),
                onPressed: answerQuestion),
            ElevatedButton(
                child: Text(questions[questionIndex][0]),
                onPressed: answerQuestion),
          ],
        ),
      ),
    );
  }
}
