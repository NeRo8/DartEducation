class Proverb {
  String _generateDefaultMessage(String a, String b) =>
      "For want of a $a the $b was lost.\n";

  String _generateLastMessage(String a) => "And all for the want of a $a.";

  String recite(List<String> pieces) {
    if (pieces.isEmpty) return "";

    return List.generate(
          pieces.length - 1,
          (i) => this._generateDefaultMessage(pieces[i], pieces[i + 1]),
        ).join() +
        this._generateLastMessage(pieces.first);
  }
}

void main() {
  Proverb p = Proverb();

  print(
    p.recite([
      "nail",
      "shoe",
      "horse",
      "rider",
      "message",
      "battle",
      "kingdom",
    ]),
  );
}
