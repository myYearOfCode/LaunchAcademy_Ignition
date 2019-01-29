let bottles = 99
let punctuation = ''
while (bottles > 2){
  if (bottles % 10 == 0){
    punctuation = "!"
  } else {
    punctuation = "."
  }
  console.log(`${bottles} bottles of beer on the wall, ${bottles} bottles of beer${punctuation}`)
  bottles --
  console.log(`Take one down, pass it around, ${bottles} bottles of beer on the wall.\n\n`)
}

while (bottles == 2){
  punctuation = "."
  console.log(`${bottles} bottles of beer on the wall, ${bottles} bottles of beer${punctuation}`)
  bottles --
  console.log(`Take one down, pass it around, ${bottles} bottle of beer on the wall.\n\n`)
}

while (bottles == 1){
  punctuation = "."
  console.log(`${bottles} bottle of beer on the wall, ${bottles} bottle of beer${punctuation}`)
  bottles --
  console.log(`Take one down, pass it around, no more bottles of beer on the wall.\n\n`)
}

while (bottles == 0){
  punctuation = "."
  console.log(`No more bottles of beer on the wall, no more bottles of beer.`)
  bottles --
  console.log(`Go to the store and buy some more, 99 bottles of beer on the wall.\n\n`)
}
