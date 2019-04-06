reduceString = (str, amount) => {
  let regex = /([a-zA-Z])\1*/gm
  let results = str.search(regex)
  console.log(results)
  let output = results.map(substring => {
    if (substring.length > amount) {
      return substring.slice(1,(amount+1))
    }
    return substring
  })
  return output.join()
};

reverseString = (str) => {

};
