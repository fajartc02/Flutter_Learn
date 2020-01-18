import 'package:flutter/material.dart';

import './question.dart';

// void main() {
//   // runapp berfungsi untuk build apps
//   runApp(MyApp());
// }
void main() => runApp(MyApp());

// StatefulWidget berfungsi ketika kita ingin mengubah internal state
// ex: kita mengubah nilai property pada constructor dan kita ubah di dalam satu class,
// kita bisa melakukannya, tapi kalo stateless tidak bisa
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}
// _ untuk menandakan private property
// dalam dart _ untuk memastikan bahwa property tidak di gunakan di file lain (hanya pada main.dart saja)
class _MyAppState extends State {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      // setState berfungsi untuk update variable saat nilai di ubah dan UI terupdate
      // dan akan membuild Widget kembali, sehingga UI bisa di re-render
      questionIndex++;
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'what\'s your favorite color?',
      'What\'s your favorite animal?'
    ]; // garing \ berfungsi menganggap kutip menjadi text
    return MaterialApp(
      home: Scaffold(
        // berfungsi untuk membuat design halaman dasar
        appBar: AppBar(
          // appBar adalah bagian atas dasar/Header
          title: Text('My First App'),
        ),
        body: Column(
          children: <Widget>[
            // Text('The Questions!'),
            // Text(
            //   // questions.elementAt(1)
            //   questions[questionIndex]
            // ),
            Question(
              // Widget Question adalah custom yang berasal dari question.dart
              questions[questionIndex]
            ),
            RaisedButton(
              child: Text('Question 1'),
              onPressed: answerQuestion,
              // apabila answerQuestion() maka akan error karena dart baru akan mengeksekusi RaisedButton function akan langsung di panggil
            ),
            RaisedButton(
              child: Text('Question 2'),
              onPressed: () => print('Answer 2 Choosen!'),
            ),
            RaisedButton(
              child: Text('Question 3'),
              onPressed: () {
                print('Answer 3 Choosen!');
              },
            )
          ],
        ),
      ),
    );
  }
}
