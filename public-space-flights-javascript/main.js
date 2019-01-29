const dehydratedBanana = 1.27
const tofuCake = 4.17
const cheeseSpread = 3.79
const dehydratedIceCreamSandwich = 0.75

let numAdults = prompt("Hello brave customer! Welcome to our exclusive space flight tours. \nHow many adult tickets would you like?")
console.log(numAdults)
let numChildren = prompt("How many child tickets would you like?")
console.log(numChildren)

console.log(`Here are your ${numAdults} adult tickets and ${numChildren} child tickets!`)

console.log(`Two tofu cakes and two dehydrated ice cream sandwiches cost ${2 * tofuCake + 2 * dehydratedIceCreamSandwich}`)
console.log(`Eight cheese spreads and a dehydrated banana cost ${8 * cheeseSpread + 1 * dehydratedBanana}`)
console.log(`Three of each item on the menu cost ${
  3 * tofuCake +
  3 * dehydratedIceCreamSandwich +
  3 * dehydratedBanana +
  3 * cheeseSpread
}`)
