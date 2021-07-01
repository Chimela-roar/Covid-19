import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question('Do you have fever?', true),
    Question('Do you have cough', true),
    Question('Do you have shortness of breath', true),
    Question('Do you get tired easily?', true),
    Question('Do you have muscles or body aches', true),
    Question('Do you have headaches?', true),
    Question('Do you have loss of taste or smell?', true),
    Question('Do you have sore throat?', true),
    Question('Do you have running nose?', true),
    Question('Are you vomiting', true),
    Question('Do you have diarrhea', true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
