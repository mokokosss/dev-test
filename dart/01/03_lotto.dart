import 'dart:math';



void main() {

  for( int l = 0; l < 5; l ++){

  List<int> nums = List<int>.filled(6, 0);
 
  
  
  for( int i = 0; i < 6; i ++) {
    
    int temp = Random().nextInt(45) + 1;
    
    while (nums.contains(temp)) {
      temp = Random().nextInt(45) + 1;
    }
    nums[i] = temp;
  }

  List<int> lottoList = nums.toList(); 
  lottoList.sort(); 
  print(lottoList);

}

}
 
  