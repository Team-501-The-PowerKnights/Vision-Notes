void main() {
  // String
  String firstName;
  firstName = "Matthew";

  // int
  int age;
  age = 15;

  // double
  double exactAge;
  exactAge = 15.7;

  // bool
  bool atHome;
  atHome = true;

  // null
  void nothing;
  nothing = null;

  // num
  num streetNum;
  streetNum = 30;

  // list
  List<String> names;
  names = [
    "Matthew",
    "Peter",
  ];
  print(names[0]);

  // map
  Map<String, int> namesAndAges;
  namesAndAges = {
    "Matthew": 15,
    "Peter": 15,
  };
  print(namesAndAges["Matthew"]);
}
