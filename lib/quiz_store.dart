import 'package:mobx/mobx.dart';

// Generate code menggunakan build_runner
// flutter pub run build_runner build
part 'quiz_store.g.dart';

// Store MobX untuk mengelola state quiz
class QuizStore = _QuizStore with _$QuizStore;

abstract class _QuizStore with Store {
  @observable
  int currentQuestionIndex = 0;

  @observable
  int correctAnswers = 0;

  @observable
  List<Map<String, dynamic>> questions = [
    {"question": "Apakah Flutter menggunakan bahasa Dart?", "answer": true},
    {"question": "Apakah Flutter framework untuk backend?", "answer": false},
    {"question": "Apakah YES berarti YA?", "answer": true},
  ];

  @computed
  bool get isQuizFinished => currentQuestionIndex >= questions.length;

  @action
  void answerQuestion(bool userAnswer) {
    final correctAnswer = questions[currentQuestionIndex]['answer'] as bool;
    if (userAnswer == correctAnswer) {
      correctAnswers++;
    }
    currentQuestionIndex++;
  }

  @action
  void resetQuiz() {
    currentQuestionIndex = 0;
    correctAnswers = 0;
  }
}
