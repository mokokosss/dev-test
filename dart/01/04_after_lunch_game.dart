import 'dart:math';
import 'dart:io';

void main() {
  List<String> lunch = [];

  for (String lunchMember = ""; lunchMember != "Q";) {
    stdout.write('함께 식사를 한 사람을 입력해주세요. (종료: Q)');
    String input = stdin.readLineSync()!;
    lunchMember = input.toUpperCase(); // 대문자로 변환하여 비교

    if (lunchMember != "Q") {
      lunch.add(lunchMember); // 런치멤을 런치 리스트에 넣어
    }
  }

  stdout.writeln('두구두구두구...');

  // 셔플
  Random random = Random();
  while (lunch.isNotEmpty) {
    int nugu = random.nextInt(lunch.length);
    String dangbun = lunch[nugu];
    lunch.removeAt(nugu); // 리스트에서 삭제
    if (lunch.isEmpty) {
      stdout.writeln('${dangbun}, 당첨!'); // 리스트가 비었을 때 출력
    } else {
      stdout.write('${dangbun}, 아니쥬?!\n'); // 셔플값 노출
      sleep(Duration(seconds: 1)); // 1초 동안 지연
    }
  }
}
