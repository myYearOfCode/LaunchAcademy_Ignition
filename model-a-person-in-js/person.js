let ross = {
  firstName: "Ross",
  lastName: "Daly",
  hometown: "Greece, NY",
  occupation: "Finding a new one currently",
  catchPhrase: "catchphrases are for the weak.",
  name(){
    return (`${this.firstName} ${this.lastName}`)
  }
}

console.log(ross.name())
