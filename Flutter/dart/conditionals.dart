void main() {
  // !=
  // <
  // >
  // <=
  // >=
  // ==
  // ||
  // &&
  // ==

  // If statements
  if (0 == 0) {
    print("This code is going to run");
  } else if (0 == 0) {
    print("This code doesn't run");
  } else {
    print("This runs if all checks fail");
  }

  // Switch Statements
  const age = 90;
  switch (age) {
    case 0:
      print("New born");
      break;
    case 15:
      print("You are in high school");
      break;
    default:
      print("You age is $age");
  }
}
