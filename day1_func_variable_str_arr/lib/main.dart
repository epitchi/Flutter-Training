import 'package:flutter/material.dart';

String s1 = 'How are you ? \n';
String s2 = 'I\'m fine';
var s3 = '$s1 - $s2';
int x = 10;
List<int> numbers = [1, 4, 6, 2, 3, 9 ,11];
List<String> stringNumbers = numbers.map((number){
  return 'value = $number';
}).toList();
void main() {
  //classical may of iterating
  // for (int i = 0; i < numbers.length; i++){
  //   print(numbers[i]);
  // }
  // numbers.forEach((number){
  //   print(number);
  // });
  stringNumbers.forEach((str) {print(str);});

  runApp(Center(
      child: Text(
        '$stringNumbers',
        style: TextStyle(fontSize: 20),
        textDirection: TextDirection.ltr,
      )) // left-to-right
  );
}