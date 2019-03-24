let latitude = 42.35
let longitude = -71.07

fetch(`/api/v1/forecast/${latitude},${longitude}`)
  .then( response => response.json() )
  .then(json => {
        div = document.createElement('div')
        div.innerHTML = json.currently.apparentTemperature + " and " + json.currently.summary
        document.getElementById('main').appendChild(div)
        var skycons = new Skycons({"color": "#93adaf"});
        skycons.add(document.getElementById("icon1"), json.currently.icon);
        skycons.play();
    })
