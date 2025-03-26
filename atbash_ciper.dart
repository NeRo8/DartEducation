class AtbashCipher {
  final String PLAIN = 'abcdefghijklmnopqrstuvwxyz';
  final String CIPHER = 'zyxwvutsrqponmlkjihgfedcba';
  final String NUMBERS = '0123456789';
  final String SPACE = ' ';

  String encode(String textLine) {
    String encodedLine = '';
    String result = '';

    for (int i = 0; i < textLine.length; i++) {
      String letter = textLine[i].toLowerCase();

      if (PLAIN.contains(letter)) {
        encodedLine += CIPHER[PLAIN.indexOf(letter)];
      } else if (NUMBERS.contains(letter)) {
        encodedLine += letter;
      }
    }

    for (int i = 0; i < encodedLine.length; i++) {
      if (i % 5 == 0 && i != 0) {
        result += SPACE;
      }

      result += encodedLine[i];
    }

    return result;
  }

  String decode(String encodedLine) {
    return encodedLine.toLowerCase().split('').fold('', (
      String result,
      String letter,
    ) {
      if (PLAIN.contains(letter)) {
        return result + CIPHER[PLAIN.indexOf(letter)];
      } else if (NUMBERS.contains(letter)) {
        return result + letter;
      } else {
        return result;
      }
    });
  }
}

void main() {
  AtbashCipher ac = AtbashCipher();

  print("encoded string: ${ac.encode("nero")}");

  print("decoded string: ${ac.decode("mvil")}");
}
