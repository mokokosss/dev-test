import 'dart:math';
import 'dart:io';

void main() {
  List lunch = [];
  for (String lunch = ""; lunch != "Q";) {
    stdout.write('함께 식사를 한 사람을 입력해주세요. (종료: Q)');
    lunch = stdin.readLineSync()!;
  }
  stdout.writeln('두구두구두구...');

  var dangbun = Random().nextInt(lunch.length);
  print(dangbun);
}
