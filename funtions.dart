void main() {
  final sayHi = (String name) => 'Hi, $name';
  welcome(sayHi, 'Akib');
  // print(sayHi('Akib'));
}

void welcome(String Function(String) greet, String name) {
  print(greet(name));
  print('Welcome to this course');
}
