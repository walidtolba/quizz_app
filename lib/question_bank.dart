import 'dart:ffi';

import 'package:quizz_app/question.dart';

class QuestionBank{
    List<Question> questions = [Question(question: 'You can lead a cow down stairs but not up stairs.', answer: false), Question(question: 'Approximately one quarter of human bones are in the feet.', answer: true), Question(question: 'A slug\'s blood is green.', answer: true)];
    int currentQuestion = 0;
    String getQuestion(){
        return (isAvailable())? questions[currentQuestion].question: '';
    }

    bool checkAnswer(bool answer){
      return answer == questions[currentQuestion].answer;
    }

    void nextQuestion(){
      currentQuestion++;
    }
    bool isAvailable(){
      return currentQuestion < questions.length;
    }
    void reset(){
      currentQuestion = 0;
    }

}