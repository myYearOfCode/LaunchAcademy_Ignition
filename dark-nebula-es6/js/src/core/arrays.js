
removeWithoutCopy = (arr, item) => {
  for (let i=arr.length-1; i>=0; i--) {
    if (arr[i] === item) {
      arr.splice(i,1)
    }
  }
  return arr
};

append = (arr, item) => {
  arr.push(item)
  return arr
};

truncate = (arr) => {
  arr.pop()
  return arr
};

prepend = (arr, item) => {
  arr.unshift(item)
  return arr
};

curtail = (arr) => {
  arr.shift()
  return arr
};

concat = (arr1, arr2) => {
  return arr1.concat(arr2)
};

insert = (arr, item, index) => {
  arr.splice(index,0,item)
  return arr
}

count = (arr, item) => {
  let count = 0
  arr.forEach((element) => {
    if (item === element) {
        count += 1
    }
  })
  return count
};

duplicates = (arr) => {
  let hash={}
  let output=[]
  arr.map((each) => {hash[each] = hash[each] + 1 || 1})
  Object.keys(hash).map((key) => {if (hash[key] != 1){
      output.push(parseInt(key))
      }
    })
  return output
};

square = (arr) => {
  return arr.map(number => number**2)
};

findAllOccurrences = (arr, item) => {
  let output=[]
  arr.forEach((element, index) => {if (element === item){
    output.push(index)
      }
    })
  return output
};
