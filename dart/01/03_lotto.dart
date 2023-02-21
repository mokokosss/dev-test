import 'dart:math';

void main() {
  print('[');
  for (int p = 0; p < 5; p++) {
    List<int> lotto = []; // lotto =[0,0,0,0,0,0]
    for (int i = 0; i < 6; i++) {
      int jungbok = Random().nextInt(45) + 1; // jungbok = 42
      while (lotto.contains(jungbok)) jungbok = Random().nextInt(45) + 1;
      // 하나씩 뽑아
      lotto.add(jungbok);
    }
    lotto.sort();
    print(lotto);
  }
  print(']');
}
