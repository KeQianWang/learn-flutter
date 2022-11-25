
main(List<String> args) {
  Colors.values.forEach((v) => print('value: $v, index: ${v.index}'));
}

enum Colors {
  red,
  green,
  blue
}