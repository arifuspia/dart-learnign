/* Functions with named arguments:
without null safety: arguments can be omitted.
with null safety: 
  1. make arguments nullable: (ex: {String? name}).
  2. make arguments non-nullable
      a. use a default value (ex: {String name = ''}).
      b. mark them as required (ex: {required: String name}).
note: null safety gives us compile-time guarantees about what can and can not be null.
*/

void main() {
  // positional arguments
  final person = describe('Arif', 26);
  print(person);

  // Function with name arguments/ parameter.
  final person2 = details(name: 'Noor', age: 23);
  print(person2);
  foo(1, b: 5, c: 10);
}

//Function with positional arguments
// in this, any of parameter can be null or omitted. the function will work.
String describe(String name, int age) {
  return "My name is $name and I'am $age years old";
}

// Function with name arguments/ parameter.
String details({required String name, required int age}) {
  return "My name is $name and I'am $age years old";
}

// we can use named and positional arguments in a function at a time...

void foo(int a, {int b = 2, int c = 0}) {
  print('a: $a, b: $b, c: $c');
}
