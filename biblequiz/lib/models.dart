import 'package:biblequiz/list.dart';

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
    question: ' 태초에 하나님이 창조하신 것은?',
    options: ['물고기', '천사', '천지', '산'],
    answerIndex: 2,
    rewardPageContent: list[0],
  ),Quiz(
    question: '땅의 초기 상태는 혼돈하고 공허하였다',
    options: ['O', 'X'],
    answerIndex: 0,
    rewardPageContent: list[1]+list[2]+list[3],
  ),
  // 다른 퀴즈들 추가
];
