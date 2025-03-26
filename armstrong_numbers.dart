class ArmstrongNumbers {
  bool isArmstrongNumber(String numberString) {
    BigInt result = BigInt.zero;
    for (int index = 0; index < numberString.length; index++) {
      BigInt number = BigInt.parse(numberString[index]);
      result += number.pow(numberString.length);
    }
    return result.toString() == numberString;
  }
}

void main() {
  ArmstrongNumbers an = ArmstrongNumbers();

  print("Is armstrong number: ${an.isArmstrongNumber("123")}");
}
