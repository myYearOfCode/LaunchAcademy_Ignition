// make an eventhandler on the random button (only visible in the random page)
let button = document.getElementById("random_button")
let content = document.getElementById("content")

let makeApiCall = () => {
  // prompt()
  // console.log('clicked it!')
  fetch('/get_json')
   .then(function (response) {
     return response.json();
   })
   .then(function (json) {
     content.innerHTML += '<h1 class="headline">' + json['title'] + '</h1>'
     content.innerHTML += '<p>' + json['description']
     content.innerHTML += '<a href="http://' + json['url']  + '" target="_blank" >' +  json['url'] + '<hr>'
   });

}

button.addEventListener('click', makeApiCall)
