// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$QuizStore on _QuizStore, Store {
  Computed<bool>? _$isQuizFinishedComputed;

  @override
  bool get isQuizFinished =>
      (_$isQuizFinishedComputed ??= Computed<bool>(() => super.isQuizFinished,
              name: '_QuizStore.isQuizFinished'))
          .value;

  late final _$currentQuestionIndexAtom =
      Atom(name: '_QuizStore.currentQuestionIndex', context: context);

  @override
  int get currentQuestionIndex {
    _$currentQuestionIndexAtom.reportRead();
    return super.currentQuestionIndex;
  }

  @override
  set currentQuestionIndex(int value) {
    _$currentQuestionIndexAtom.reportWrite(value, super.currentQuestionIndex,
        () {
      super.currentQuestionIndex = value;
    });
  }

  late final _$correctAnswersAtom =
      Atom(name: '_QuizStore.correctAnswers', context: context);

  @override
  int get correctAnswers {
    _$correctAnswersAtom.reportRead();
    return super.correctAnswers;
  }

  @override
  set correctAnswers(int value) {
    _$correctAnswersAtom.reportWrite(value, super.correctAnswers, () {
      super.correctAnswers = value;
    });
  }

  late final _$questionsAtom =
      Atom(name: '_QuizStore.questions', context: context);

  @override
  List<Map<String, dynamic>> get questions {
    _$questionsAtom.reportRead();
    return super.questions;
  }

  @override
  set questions(List<Map<String, dynamic>> value) {
    _$questionsAtom.reportWrite(value, super.questions, () {
      super.questions = value;
    });
  }

  late final _$_QuizStoreActionController =
      ActionController(name: '_QuizStore', context: context);

  @override
  void answerQuestion(bool userAnswer) {
    final _$actionInfo = _$_QuizStoreActionController.startAction(
        name: '_QuizStore.answerQuestion');
    try {
      return super.answerQuestion(userAnswer);
    } finally {
      _$_QuizStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void resetQuiz() {
    final _$actionInfo =
        _$_QuizStoreActionController.startAction(name: '_QuizStore.resetQuiz');
    try {
      return super.resetQuiz();
    } finally {
      _$_QuizStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentQuestionIndex: ${currentQuestionIndex},
correctAnswers: ${correctAnswers},
questions: ${questions},
isQuizFinished: ${isQuizFinished}
    ''';
  }
}
