class Letter {
  final String letter;
  final int points;

  Letter(this.letter, this.points);
}

class Dictionary {
  final Map<String, Letter> dictionary = {
    'A': Letter('A', 1),
    'E': Letter('E', 1),
    'I': Letter('I', 1),
    'O': Letter('O', 1),
    'U': Letter('U', 1),
    'L': Letter('L', 1),
    'N': Letter('N', 1),
    'R': Letter('R', 1),
    'S': Letter('S', 1),
    'T': Letter('T', 1),
    'D': Letter('D', 2),
    'G': Letter('G', 2),
    'B': Letter('B', 3),
    'C': Letter('C', 3),
    'M': Letter('M', 3),
    'P': Letter('P', 3),
    'F': Letter('F', 4),
    'H': Letter('H', 4),
    'V': Letter('V', 4),
    'W': Letter('W', 4),
    'Y': Letter('Y', 4),
    'K': Letter('K', 5),
    'J': Letter('J', 8),
    'X': Letter('X', 8),
    'Q': Letter('Q', 10),
    'Z': Letter('Z', 10),
  };

  int getPoints(String letter) {
    return dictionary[letter]?.points ?? 0;
  }
}

class Game {
  static Dictionary d = Dictionary();

  int score(String word) {
    return word
        .toUpperCase()
        .split('')
        .fold(0, (sum, letter) => sum + d.getPoints(letter));
  }
}

void main() {
  Game g = Game();

  print(g.score("AFHV"));
}
