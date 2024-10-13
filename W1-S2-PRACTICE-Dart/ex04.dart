void main() {
  // Map of pizza prices
  const pizzaPrices = {
    'margherita': 5.5,
    'pepperoni': 7.5,
    'vegetarian': 6.5,
  };

  // Example order
  const order = ['margherita', 'pepperoni'];

  // Your code
  var totalPrice = 0.0;
  for (var i = 0; i < order.length; i++) {
    var pizza = order[i];
    if (pizzaPrices.containsKey(pizza)) {  //use containssKey function to check if  pizza is in the map
      totalPrice += pizzaPrices[pizza]!; // ! here is called null safety
    } else {
      print('$pizza pizza is not on the menu.');
      return;
    }
  }

  print('Total: \$$totalPrice');
}
