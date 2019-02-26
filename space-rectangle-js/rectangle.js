class Rectangle {
  constructor(width,height) {
    this.width = width
    this.height = height || width
  }
  area() {
    return this.width * this.height
  }
}

let rectRect = new Rectangle(4,10)
console.log(rectRect)
let sqRect = new Rectangle(4)
console.log(sqRect)
console.log(sqRect.area())
