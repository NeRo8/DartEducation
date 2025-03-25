class Leap {
  bool leapYear(year) {
    return (year % 4 == 0 && year % 100 != 0) || year % 400 == 0;
  }
}

void main() {
  Leap lp = Leap();

  print(lp.leapYear(2025));
}
