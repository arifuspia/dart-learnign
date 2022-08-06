void main() {
  const order = ['margherita', 'pepperoni', 'pineapple', 'sea-food'];
  final total = calculateTotalPrice(order);
  print('Total: \$$total');
}

double calculateTotalPrice(List<String> order) {
  const pizzaPrices = {
    'margherita': 5.5,
    'pepperoni': 7.5,
    'vegetarian': 6.5,
    'pineapple': 8.7,
  };
  var total = 0.0;
  for (var item in order) {
    final price = pizzaPrices[item];
    if (price != null) {
      total += price;
    } else {
      print('$item is not in the menu');
    }
  }
  return total;
}
