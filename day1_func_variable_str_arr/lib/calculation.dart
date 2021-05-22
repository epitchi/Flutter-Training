String s1 = 'How are you ? \n';
String s2 = 'I\'m fine';
var s3 = '$s1 - $s2';
int x = 10;
List<int> numbers = [1, 4, 6, 2, 3, 9 ,11];
List<String> stringNumbers = numbers.map((number){
  return 'value = $number';
}).toList();