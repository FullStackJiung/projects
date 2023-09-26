class Quiz {
  final String question;
  final List<String> options;
  final int answerIndex;
  final String rewardPageContent;

  Quiz({
    required this.question,
    required this.options,
    required this.answerIndex,
    required this.rewardPageContent,
  });
}

final List<Quiz> quizzes = [
  Quiz(
    question: '창세기에서 아담의 부인의 이름은 무엇인가요?',
    options: ['사라', '레아', '라헬', '하와'],
    answerIndex: 3,
    rewardPageContent: '하나님께서는 아담의 갈빗대로 하와를 창조하셨다...',
  ),
  // 다른 퀴즈들 추가
];
