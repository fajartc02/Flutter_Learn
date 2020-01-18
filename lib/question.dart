import 'package:flutter/material.dart';

// Custom Widget
class Question extends StatelessWidget {
  // final berfungsi untuk memberi tahu dart nilai ini tidak akan pernah berubah setelah init. constructor
  // ini hal yang biasa dan harus di gunakan dart
  final String questionText;
  // ini adalah initialize constructor property yg di define
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Text(questionText);
  }
}