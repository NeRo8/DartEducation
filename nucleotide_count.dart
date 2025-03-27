class InvalidNucleotideException implements Exception {
  final String message;

  InvalidNucleotideException([
    this.message = "Invalid nucleotide found in DNA sequence",
  ]);

  @override
  String toString() => "InvalidNucleotideException: $message";
}

class NucleotideCount {
  bool isValidDNA(String input) {
    final RegExp regex = RegExp(r'^[ACGT]+$');
    return regex.hasMatch(input);
  }

  Map<String, int> count(String dna) {
    if (!isValidDNA(dna) && dna.length != 0) {
      throw InvalidNucleotideException();
    }

    Map<String, int> result = {"A": 0, "C": 0, "G": 0, "T": 0};

    for (int index = 0; index < dna.length; index++) {
      String currentLetter = dna[index];

      result[currentLetter] = result[currentLetter]! + 1;
    }

    return result;
  }
}

void main() {
  NucleotideCount nc = NucleotideCount();

  var result = nc.count("GATTACA");

  print(result);
}
