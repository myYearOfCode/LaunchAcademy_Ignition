
// Team 1 - JustJavaScript
let rami = 88
let natoya = 92
let max = 68
let lynn = 100

// Team 2 - We Are Ruby
let sasha = 82
let mohammed = 98
let jennifer = 94
let denise = 92

let justJavaScript = [rami, natoya, max, lynn]
let weAreRuby = [sasha, mohammed, jennifer, denise]

let weAreRubyScore = findAverage(weAreRuby)
let justJavaScriptScore = findAverage(justJavaScript)

console.log(`JustJavaScript's average score is: ${Math.round(justJavaScriptScore)}`)
console.log(`We Are Ruby's average score is: ${Math.round(weAreRubyScore)}`)
console.log(`Both teams average score is: ${Math.round((weAreRubyScore+justJavaScriptScore)/2)}`)

let players = justJavaScript.concat(weAreRuby)
let playersPassed = 0
players.forEach((player) => {
  if (player >= 70) { playersPassed ++ }
})

console.log(`${playersPassed} players passed this test.`)

function findAverage(array) {
  let rawScore = 0
  array.forEach(student => {
    rawScore += student
  })
  return (rawScore/array.length)
}
