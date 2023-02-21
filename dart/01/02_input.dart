import 'dart:io';

void main() {
  print('당신은 누구입니까?');

  dynamic name = stdin.readLineSync();

  print('안녕하세요 저는 $name 입니다. 반갑습니다');
}
