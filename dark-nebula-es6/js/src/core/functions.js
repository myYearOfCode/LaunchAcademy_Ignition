isPrime = (num) => {
  if (num % 2 != 0){
    for (let i=2; i++; i<num){
      if (num % i === 0){
        return false
      }
      return true
    }
  }
  return false
};

arraySum = (array) => {
  return array.reduce((sum, element) => sum += element)
};

fizzBuzz = (num) => {
  if ((!num) || (typeof(num) === 'string')){
    return null
  }
  if (num % 15 === 0){
    return 'fizzbuzz'
  } else if (num % 5 === 0) {
    return 'buzz'
  } else if (num % 3 === 0) {
    return 'fizz'
  } else {
    return num
  }
  // write a function that receives a number as its argument;
  // if the number is divisible by 3, the function should return 'fizz';
  // if the number is divisible by 5, the function should return 'buzz';
  // if the number is divisible by 3 and 5, the function should return
  // 'fizzbuzz';
  //
  // otherwise the function should return the number, or null if no number
  // was provided or the value provided is not a number
};
