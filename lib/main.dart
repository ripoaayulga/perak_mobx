import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'quiz_store.dart';

void main() {
  runApp(FigmaToCodeApp());
}

class FigmaToCodeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      home: Scaffold(
        body: Center(
          child: ListView(
            shrinkWrap: true,
            children: [
              QuizPage(),
            ],
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatelessWidget {
  final quizStore = QuizStore();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Observer(
          builder: (_) {
            if (!quizStore.isQuizFinished) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Pertanyaan ${quizStore.currentQuestionIndex + 1}',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Container(
                    width: 332,
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFF2C2C2C)),
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Center(
                      child: Text(
                        quizStore.questions[quizStore.currentQuestionIndex]
                            ['question'],
                        style: TextStyle(
                          color: Color(0xFF1E1E1E),
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  Text(
                    'Pilih jawaban anda!',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          quizStore.answerQuestion(true);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF4287FF),
                        ),
                        child: Text('Benar', style: TextStyle(
                          color: Colors.white
                        ),),
                      ),
                      const SizedBox(width: 12),
                      ElevatedButton(
                        onPressed: () {
                          quizStore.answerQuestion(false);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFF04646),
                        ),
                        child: Text('Salah', style: TextStyle(
                          color: Colors.white
                        ),),
                      ),
                    ],
                  ),
                ],
              );
            } else {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Quiz Selesai!',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Nilai anda: ${(quizStore.correctAnswers / quizStore.questions.length * 100).toInt()}',
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      quizStore.resetQuiz();
                    },
                    child: Text('Ulangi Quiz'),
                  ),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
