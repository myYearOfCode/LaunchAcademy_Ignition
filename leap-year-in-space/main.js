class Year {
  constructor(year){
    this.year = year
  }
  isLeap(){
    return ((this.year % 4 == 0) && (this.year % 100 != 0)) || (this.year % 400 == 0);
  }
  setYear(year) {
    this.year = year
  }
}

let mine = new Year(2019)
for (let i = 2000; i < 2100; i++){
  mine.setYear(i)
  if (mine.isLeap()) {
    console.log(i)
  }
}
