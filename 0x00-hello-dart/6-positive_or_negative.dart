void main(List<String> args) {
  /* Negative or Positive */
  var number = int.parse(args[0]);
  if (number > 0) {
    print('$number is positive');
  } else if (number == 0) {
    print('$number is zero');
  } else {
    print('$number is negative');
  }
}
