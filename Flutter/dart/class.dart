class Car {
  final String model;
  final int age;

  // Positional Constructor
  Car(this.model, this.age) {
    print("model");
  }

  // Method
  int getMaxSpeed() {
    return 80;
  }
}

class Person {
  final String name;
  final int age;

  static const type = "Person";

  // Named Constructor
  Person({this.name, this.age = 0});
}

void main() {
  // Instance
  final car1 = Car("Tesla Model 3", 13);
  final car2 = Car("Tesla Cyber Truck", 10);
  final person1 = Person(name: "Matthew");

  // Calling Method
  print(car1.getMaxSpeed());
  print(car2.getMaxSpeed());

  // Getting Properties
  print(car1.model);
  print(car2.model);
}
