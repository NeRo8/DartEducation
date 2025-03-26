class Etl {
  Map<String, int> transform(Map<String, List<String>> legacy) {
    Map<String, int> result = new Map<String, int>();
    legacy.forEach(
      (key, letters) => letters.forEach(
        (letterKey) => result[letterKey.toLowerCase()] = int.parse(key),
      ),
    );
    return result;
  }
}

void main() {
  Etl etl = Etl();

  final legacy = {
    "1": ["A", "E", "I", "O", "U", "L", "N", "R", "S", "T"],
    "2": ["D", "G"],
    "3": ["B", "C", "M", "P"],
    "4": ["F", "H", "V", "W", "Y"],
    "5": ["K"],
    "8": ["J", "X"],
    "10": ["Q", "Z"],
  };

  print(etl.transform(legacy));
}
