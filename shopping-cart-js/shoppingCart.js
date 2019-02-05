
let fish = {
  itemName: "fish",
  quantity: 3
}

let tea = {
  itemName: "tea",
  quantity: 2
}

let coffee = {
  itemName: "coffee",
  quantity: 300
}
shoppingCart = []
shoppingCart.push(...[coffee,tea,fish])
console.log(shoppingCart)

shoppingCart.forEach(item => {
  console.log(`${item.itemName}:${item.quantity}`)
})
