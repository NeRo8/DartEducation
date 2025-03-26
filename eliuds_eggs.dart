class EggCounter {
  int count(int value) {
    return value.toRadixString(2).split("").fold(0, (
      int result,
      String element,
    ) {
      return element == "1" ? result + 1 : result;
    });
  }
}

void main() {
  EggCounter ec = EggCounter();

  print("count egss ${ec.count(16)}");
}
