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

    let header = document.createElement('h1')
    header.innerText = json['title']

    let description = document.createElement('p')
    description.innerText = json['description']

    let link = document.createElement('a')
    link.value = json['url']
    link.innerText = json['url']

    div = document.createElement('div')
    div.classList.add('article')

    div.appendChild(header)
    div.appendChild(description)
    div.appendChild(link)
    content.appendChild(div)
     // content.innerHTML += '<h1 class="headline">' + json['title'] + '</h1>'
     // content.innerHTML += '<p>' + json['description']
     // content.innerHTML += '<a href="http://' + json['url']  + '" target="_blank" >' +  json['url'] + '<hr>'
   });

}

button.addEventListener('click', makeApiCall)
