let eggs = {
  itemName: 'dozen eggs',
  quantity: 2,
  price: 0.99
}

let milk = {
  itemName: 'gallon of milk',
  quantity: 1,
  price: 2.99
}

let bread = {
  itemName: 'loaf of bread',
  quantity: 1,
  price: 3.50
}

let coffee = {
  itemName: 'lbs. of coffee',
  quantity: 10,
  price: 8.99
}

let shoppingCart = [eggs, milk, bread, coffee]
let onePoundOfCoffee = coffee.price
let gallonsOfMilk = shoppingCart[shoppingCart.indexOf(milk)].quantity
let total = shoppingCart.reduce((accumulator,item) =>  {
  return item.quantity * item.price;
}, 0)

console.log(`The shopping cart total (pre tax) is: $${(Math.round(total*100)/100.00).toFixed(2)}`)
console.log(`The shopping cart total (with tax) is: $${(Math.round((total*1.0625)*100)/100.00).toFixed(2)}`)
