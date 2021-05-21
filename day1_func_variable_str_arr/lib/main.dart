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
  runApp(Center(
      child: Text(
        cars.toString(),
        style: TextStyle(fontSize: 20),
        textDirection: TextDirection.ltr,
      )) // left-to-right
  );
}

