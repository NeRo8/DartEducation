import 'dart:math';

class HighScores {
  List<int> scores;

  HighScores(this.scores);

  int latest() {
    return this.scores.last;
  }

  int personalBest() {
    return this.scores.fold(
      0,
      (int result, int current) => result < current ? current : result,
    );
  }

  List<int> personalTopThree() {
    final List<int> result = List.from(this.scores);

    result.sort((a, b) => b.compareTo(a));

    return result.sublist(0, min(3, result.length));
  }
}

void main() {
  final List<int> scores = [10, 30, 90, 30, 100, 20, 10, 0, 30, 40, 40, 70, 70];

  HighScores hs = HighScores(scores);

  print("Personal top: ${hs.personalTopThree()}");
  print("Personal: ${hs.personalBest()}");
  print("Latest: ${hs.latest()}");
}
