import 'dart:io';

void main() {
  print('Enter the number of Fibonacci numbers to generate:');
  int? count = int.tryParse(stdin.readLineSync() ?? '');

  if (count == null || count <= 0) {
    print('Invalid input. Please enter a positive integer.');
    return;
  }

  List<int> fibonacciSeries = generateFibonacci(count);

  print('Fibonacci series up to $count terms:');
  print(fibonacciSeries);
}

List<int> generateFibonacci(int count) {
  List<int> series = [];
  if (count >= 1) series.add(0);
  if (count >= 2) series.add(1);

  for (int i = 2; i < count; i++) {
    series.add(series[i - 1] + series[i - 2]);
  }

  return series;
}
