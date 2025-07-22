import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {

  const AnswerButton({
    super.key,
    required this.answerText,
    required this.onTap
  });

  final String answerText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
        backgroundColor: Colors.blue[800],
        foregroundColor: Colors.white,
        elevation: 4.0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(40)
        ),
      ),
      child:Text(answerText,
      textAlign: TextAlign.center),
    );
  }
}
