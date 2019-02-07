let teachers = ["Arrington", "Kincart", "Alberts", "Pickett"]

let rooms = [
  ["Andy", "Rodolfo", "Lynn", "Talia"],
  ["Al", "Ross", "Jorge", "Dante"],
  ["Nick", "Kim", "Jasmine", "Dorothy"],
  ["Adam", "Grayson", "Aliyah", "Alexa"]
]

//List all the teachers with an even index number (including 0)

let evenIndex = () => {
  teachers.forEach((teacher,index) => {
    if (index % 2 === 0) {
      console.log(`index: ${index}`)
      console.log(`teacher: ${teacher}`);
    }
  })
}

evenIndex()
//List all of the teachers with the letter i in their name

let iInName = () => {
  teachers.forEach((teacher) => {
    if (teacher.includes("i")) {
      console.log(teacher)
    }
  })
}

iInName()

//Return the number of teachers

let teacherCount = () => {
  return teachers.length
}

console.log(teacherCount())

//Return the number of rooms of students

let roomCount = () => {
  return rooms.length
}

console.log(roomCount())

//Return the number of students in all the rooms

let studentCount = () => {
  return (rooms.reduce((total, room) => total += room.length, 0))
}

console.log(studentCount())

//Return the students who have an i in their names

let whichStudents = () => {
  let studentList =[];
  rooms.forEach(room => {
    let roomList = room.filter(student => student.includes('i'))
    studentList = studentList.concat(roomList)
  })
  return studentList
}

//Return the students who have an i in their names

console.log(`The students who have an 'i' in their name are  ${whichStudents()}.`)

//Return the teacher who has the given student in their room

let whichTeacher = (student) => {
  let locatedRoom;
  rooms.forEach((room, index) => {
    room.includes(student) ? locatedRoom = index : null
  })
  return(teachers[locatedRoom])
}

console.log(`The teacher who has Jorge is ${whichTeacher("Jorge")}.`)
console.log(`The teacher who has Alexa is ${whichTeacher("Alexa")}.`)
