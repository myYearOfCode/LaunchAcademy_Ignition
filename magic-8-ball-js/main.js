let responses = [
  "It is certain",
  "It is decidedly so",
  "Without a doubt",
  "Yes, definitely",
  "You may rely on it",
  "As I see it, yes",
  "Most likely",
  "Outlook good",
  "Yes",
  "Signs point to yes",
  "Reply hazy try again",
  "Ask again later",
  "Better not tell you now",
  "Cannot predict now",
  "Concentrate and ask again",
  "Don't count on it",
  "My reply is no",
  "My sources say no",
  "Outlook not so good",
  "Very doubtful"
]

// Confirm the correct number of responses have been stored by printing the number to the console (`20`)
console.log(responses.length)

// Ask the user what their question is, and store it as a variable called `question`
let question = prompt("What is your question?")

// Output a random response to the user's question
console.log(responses[Math.floor(Math.random() * responses.length)])

// Output the number of responses that include the word "yes"
let countYes = 0
responses.forEach((response) => {
  response.match(/\byes\b/g) ? countYes ++ : null
})
console.log(countYes)

// Output the number of responses that include the words "no" or "not"
let countNo = 0
responses.forEach((response) => {
  response.match(/\bno[t]?\b/g) ? countNo ++ : null
})
console.log(countNo)

// Output the alphabetized list of responses
let alphabetizedResponses = responses.sort()
console.dir(alphabetizedResponses)

// Output the first and last responses from the alphabetized list
console.log(alphabetizedResponses[0],alphabetizedResponses[alphabetizedResponses.length-1])

// Delete two of the negative responses
responses.splice(15,2)
console.log(responses)

// Reassign 'Ask again later' to the beginning of the array
responses.unshift(responses.splice(1,1)[0])
console.log(responses)

// Add 1 response of your choosing to the current list
responses.push('Not in this lifetime.')
console.log(responses)

// Concat an **array** of 3 additional responses to the current list
newResponses = ["nyet", "nein", "nah dude"]
responses.push(...newResponses)
console.log(responses)

// Confirm the correct number of responses have been removed and added by printing the number of responses to the console (`22`)
console.log(responses.length)
