import 'dart:math';

class DifferenceOfSquares {
  num _factorial(int number) {
    if (number == 0) {
      return 0;
    }

    return number + this._factorial(number - 1);
  }

  num _squaresFactorial(int number) {
    if (number == 0) {
      return 0;
    }

    return pow(number, 2) + this._squaresFactorial(number - 1);
  }

  num squareOfSum(int number) {
    return pow(this._factorial(number), 2);
  }

  num sumOfSquares(int number) {
    return this._squaresFactorial(number);
  }

  num differenceOfSquares(int number) {
    return squareOfSum(number) - sumOfSquares(number);
  }
}

void main() {
  DifferenceOfSquares dos = DifferenceOfSquares();

  print(dos.sumOfSquares(5));
}
