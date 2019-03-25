containsNumber = (string) => {
  let regex = /\d/
  return regex.test(string)
};

containsRepeatingLetter = (string) => {
  let regex = /([a-zA-Z])\1{2,}/
  console.log(string + " " + regex.test(string))
  return regex.test(string)
};

endsWithVowel = (string) => {

};

captureThreeNumbers = (string) => {

};

matchesPattern = (string) => {

};

isUSD = (string) => {

};
