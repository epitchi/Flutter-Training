import 'package:flutter/material.dart';
import 'calculation.dart';
import 'car.dart';
void main()  {
  //classical may of iterating
  // for (int i = 0; i < numbers.length; i++){
  //   print(numbers[i]);
  // }
  // numbers.forEach((number){
  //   print(number);
  // });
  stringNumbers.forEach((str) {print(str);});
  //How to init an object ?
  var myCar = Car(name: 'Lmao bủh bủh', yearOfProduction: 2002);
  myCar.handleEvent = (){
    print("Handle in main");
  };
  myCar.doSomething();
  myCar.sayHello(personName: 'Hoang');
  runApp(Center(
      child: Text(
        myCar.toString(),
        style: TextStyle(fontSize: 20),
        textDirection: TextDirection.ltr,
      )) // left-to-right
  );
}

