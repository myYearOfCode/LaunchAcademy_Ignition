let todo = ['Write some JavaScript', 'Submit System Check', 'Take a Break']
let target = document.getElementById("todo-list")
listEntries = ""

todo.forEach((each) => {
  listEntries += `<li>${each}</li>`
})

target.innerHTML = listEntries
