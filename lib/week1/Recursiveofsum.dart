void main() {
  print(sumOfNumbers(10));
}

int sumOfNumbers(int n) {
  if (n == 1) {
    return 1;
  } else {
    return n = n + sumOfNumbers(n - 1);
  }
}
