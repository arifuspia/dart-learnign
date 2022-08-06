var counter = 1; // mutable global variable
const bitsInByte = 8; // sometimes is const global variable is helpfull

void foo() {
  print('*' * counter);
  counter++;
}

void main() {
  // accessing const global variable
  const kilobit = 1024 * bitsInByte;
  const megabit = 1024 * bitsInByte;
  print(kilobit);
  print(megabit);

  // calling sum function
  print(sum(1, 3));

  // calling foo()
  foo();
  foo();
  foo();
}

int sum(int x, int y) => x + y;
// need a function body with only one statement?
// we can use the => notation.
// it also works with non-return-value function.
void printSums(int x, int y) => print(x + y);


/* Complex programs:
    1. many mutable global variables.
    2. hard to keep track of what changes and where.
    3. Adding mutable global state is one of the worst things you can do.


*/