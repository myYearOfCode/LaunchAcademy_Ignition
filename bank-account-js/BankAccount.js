class BankAccount {
  constructor(initialBalance) {
    this.balance = initialBalance
    this.transactions = []
  }
  addTransaction(amount) {
    this.transactions.push(amount)
  }

  calculateBalance() {
    return this.balance + this.transactions.reduce((acc,item) => {
      return acc + item
    })
  }
}
let initialBalance = 1000
let bills = [-45, -99.95, -34.43]

let myAccount = new BankAccount(initialBalance)
console.log(myAccount.balance)
console.log(myAccount.transactions)
myAccount.transactions = bills
console.log(myAccount.transactions)
console.log(myAccount.calculateBalance())
