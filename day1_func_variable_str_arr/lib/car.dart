class Car {
  String name;
  int yearOfProduction;
  // This is the constructor
  // Car(String name, int yearOfProduction){
  //   this.name = name;
  //   this.yearOfProduction = yearOfProduction; //classical way
  // }
  //
  //New way
  // Car(this.name, this.yearOfProduction);
  //constructor with named arguments
  Car({
    required this.name, //required = not null(warning)
    required this.yearOfProduction
  });
  @override
  String toString() {
    // TODO: implement toString
    return '${this.name} - ${this.yearOfProduction}';
  }
  void doSomething(){
    print('I am doing somthing...');
    this.handleEvent();
  }
  void sayHello({required String personName}){
    print("Hello $personName");
  }
  //function as "a variable"
  Function handleEvent = (){};
}
