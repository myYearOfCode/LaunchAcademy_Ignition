// 1.)  Using a `forEach` loop, write a function called `supplyCheck` that takes
// in an array of supplies as an argument, and logs each item to your console.
// It should match the message of "SUPPLY ITEM is logged and accounted for."
let supplies = [
  "space helmet",
  "canister of oxygen",
  "water recycler",
  "big red button",
  "freeze dried ice cream",
  "tang drink mix"
]

let supplyCheck = (supplies) => {
  let output = ""
    supplies.forEach((item) => {
      output += `${item} is logged and accounted for.\n`
  })
  return output
}

console.log(supplyCheck(supplies))

// 2.) Create a function named stowSupplies that takes in our array of supplies,
// and returns item name and its index number in a formatted string.

let stowSupplies = (supplies) => {
  let output = ""
  supplies.forEach((item, index) => {
    output += ( `${item}, ${index}\n`)
  })
  return output
}

console.log(stowSupplies(supplies))

// 3.) Create a function named addAlphabetically that takes in our array of
// supplies and a new supply item and returns an array of supplies with that new
// item, sorted alphabetically.

let addAlphabetically = (supplies, newItem) => {
  supplies.push(newItem)
  return supplies.sort()
}

console.log(addAlphabetically(supplies, "laser pistol"))

// 4.) Create a function named stockCheck that takes in an inventory checklist
// array, and an array of supplies, and returns an array of items that are
// missing from the checklist.

let inventoryChecklist = [
  "big red button",
  "canister of oxygen",
  "freeze dried ice cream",
  "jetpack",
  "tang drink mix",
  "space helmet",
  "space brussels sprouts",
  "water recycler",
  "welding torch"
]

let stockCheck = (inventoryChecklist, supplies) => {
  let itemsMissing = []
  inventoryChecklist.forEach((item) => {
    if (!supplies.includes(item)) {
      itemsMissing.push(item)
    }
  })
  return itemsMissing
}
console.log(stockCheck(inventoryChecklist, supplies))

// 5.) Create a function named addMissingSupplies that takes in an array of
// supplies, and an array of missing supplies, and returns a new array with all
// of the items combined! Use your stockCheck method to help you with this.

let addMissingSupplies = (supplies, missingSupplies) => {
  missingSupplies.forEach((item) => {
    if (!supplies.includes(item)) {
      supplies.push(item)
    }
  })
  return supplies
}
console.log(
  addMissingSupplies(supplies, stockCheck(inventoryChecklist, supplies))
)
