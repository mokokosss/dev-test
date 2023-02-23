import 'dart:io';

void main() {
  stdout.write("몇 개월 째 토끼가 몇 쌍인지 구할까요?");
  int n = int.parse(stdin.readLineSync()!);
  int sum = fibonacciSum(n);
  print("토끼는 총 $sum 쌍이야.");
}

int fibonacciSum(int n) {
  if (n <= 0) return 1; //0개월도 1쌍
  if (n == 1) return 1;
  if (n == 2) return 2;
  if (n == 3) return 3;

  int sum = 0;
  int gen1 = 1;
  int gen2 = 1;
  for (int i = 3; i <= n; i++) {
    int now = gen1 + gen2;
    sum += now;
    gen2 = gen1;
    gen1 = now;
  }
  return sum + 2;
}
