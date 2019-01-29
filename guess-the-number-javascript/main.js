let total = 0
let counter = 0

let winningNumber = Math.ceil(Math.random() * 10)

let userName = prompt("Hello! What is your name?")
let userGuess = parseInt(prompt(`${userName} what number (1-10) do you guess?`))

if (userGuess === winningNumber){
  console.log("Wow! You guessed it! You WIN!")
} else {
  console.log("You lost!")
}
