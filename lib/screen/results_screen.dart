import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import '../utils/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.chosenAnswers, required this.onRestart});

  final List<String> chosenAnswers;
  final void Function() onRestart;

  List <Map<String, Object>> getSummaryData(){
    final List <Map<String, Object>> summary = [];

    for(var i = 0; i< chosenAnswers.length; i++){
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i]
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {

    final summaryData = getSummaryData();
    final numberOfTotalQuestions = questions.length;
    final numberOfCorrectQuestions = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                'You answered $numberOfCorrectQuestions out of $numberOfTotalQuestions question correctly!',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.blueAccent,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 30,),
            QuestionsSummary(summaryData: summaryData),
            SizedBox(height: 30,),
            TextButton(
                onPressed: onRestart,
                child: Text('Restart Quiz!')
            ),
          ],
        ),
      ),
    );
  }
}
