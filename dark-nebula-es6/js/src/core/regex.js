containsNumber = (string) => {
  let regex = /\d/
  return regex.test(string)
};

containsRepeatingLetter = (string) => {
  let regex = /([a-zA-Z])\1{1,}/
  // console.log(string + " " + regex.test(string))
  return regex.test(string)
};

endsWithVowel = (string) => {
  let regex = /[aeiou]$/i
  return regex.test(string)
};

captureThreeNumbers = (string) => {
  let regex = /(\d){3}/
  return regex.test(string) ? string.match(regex)[0] : false
};

matchesPattern = (string) => {
  let regex = /^[0-9]{3}-[0-9]{3}-[0-9]{4}$/
  return regex.test(string)
};

isUSD = (string) => {
  let regex = /^\$\d{1,3}(,\d{3})*((\.\d{2}$)|$){1}/
  console.log( string + " " + regex.test(string))
  return regex.test(string)
};
