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
  // var myCar = Car(name: 'Lmao bủh bủh', yearOfProduction: 2002);
  // myCar.handleEvent = (){
  //   print("Handle in main");
  // };
  // myCar.doSomething(); // _doSomething is "private" method
  // myCar.sayHello(personName: 'Hoang');
  //list of cars
  List<Car> cars = <Car>[
    Car(name: 'Xe gay', yearOfProduction: 2011),
    Car(name: 'Xe k gay', yearOfProduction: 2022),
    Car(name: 'Xe bth', yearOfProduction: 2020),
  ];// a blank list
  // How to sort this list, by yearOfProduction ?
  ///sort ascending
  // cars.sort((car1, car2) => car1.yearOfProduction - car2.yearOfProduction);
  ///sort descending
  // cars.sort((car1, car2) => car2.yearOfProduction - car1.yearOfProduction);
  // How to sort by name ?
  // cars.sort((car1, car2) => car1.name.compareTo(car2.name));
  // How to update item in the list?
  // cars[0].yearOfProduction = 2019;
  //How to filter ? Ex: get only cars in 2020
  //contains == k phan biet hoa voi thuong`
  var filteredCars = cars.where((car) => car.yearOfProduction == 2020 && car.name.contains("Xe")).toList();
  //deete an item = using filter
  cars = cars.where((car) => car.yearOfProduction != 2020).toList();
  //How to get a list of names ? use "map"
  List<String> names = cars.map((car) => car.name).toList();
  names.forEach((name) {print('name: ${name}');});
  // Now we try with final and const(constant)
  // const int x = 10; // const and final are the same if value type is primitive(int, float, double, string...)
  // but i can add some more items a "final" list.
  // In "const" list, you cannot do that!
  final List<int> someNumbers = [1, 2, 3, 5];
  // someNumbers.add(7);
  someNumbers[1] = 99; // you can update item's value in a list(final)
  // now reference to a const list
  List<int> someNumbers2 = someNumbers;
  someNumbers2.add(123);
  //In a const, i cant add some items to someNumber2 becuz its clone from const
  //In a final, you can reference someNumbers2 to another array after reference to a "final"
  //You can define an object without creating a class => Map type
  Map<String, dynamic> personA = Map();
  personA['name'] = 'Hoang';
  personA['age'] = 18;
  Map<double, double> point = Map();
  point[2.0] = 3.2; // x = 2.0, y = 3.2
  point[1.0] =5.6; //... You can addd many key-value as you like!

  runApp(Center(
      child: Text(
        cars.toString(),
        style: TextStyle(fontSize: 20),
        textDirection: TextDirection.ltr,
      )) // left-to-right
  );
}
