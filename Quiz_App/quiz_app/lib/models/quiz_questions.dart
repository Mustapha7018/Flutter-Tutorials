class Question {
  final String text;
  final List<String> options;

  const Question(this.text, this.options);

  List<String> getShuffledAnswers() {
    final shuffledList = List.of(options);
    shuffledList.shuffle();
    return shuffledList;
  }
}
