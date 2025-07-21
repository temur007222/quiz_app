import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz,{super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: <Widget>[

          Opacity(
              opacity: 0.6,
              child: Image.asset('assets/quiz.jpg')
          ),

          Text(
            'Learn Flutter the fun way!',
            style: TextStyle(
              fontSize: 28.0,
              color: Colors.blueAccent,
            ),
          ),
          SizedBox(height: 15),

          OutlinedButton(
            onPressed: (){
              startQuiz();
            },
            style: OutlinedButton.styleFrom(
                backgroundColor: Colors.grey[50],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6.0),
                ),
                elevation: 4.0
            ),
            child: Text(
              'Start Quiz',
              style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 16.0
              ),
            ),
          )
        ],
      ),
    );
  }
}
