void main() {
  // For Loop runs 10 times
  for (int i = 0; i != 10; i++) {
    print(i);
  }

  const names = [
    "Matthew",
    "Peter",
  ];
  for (int i = 0; i != names.length; i++) {
    print(names[i]);
  }
  for (var name in names) {
    print(name);
  }

  // While
  var count = 0;
  while (true) {
    count++;
    // break;
    // continue;
  }
}
