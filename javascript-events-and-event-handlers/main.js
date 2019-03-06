
let text = document.getElementById('changing-color-text')

let changeFontColor = (event) => {
  let colors = ['Aqua', 'Blue', 'Orange', 'Green', 'Red', 'LightSteelBlue']
  let index = Math.floor(Math.random() * colors.length)
  let color = colors[index]

  event.target.style.color = color
  // Note that some older versions of IE e.g. 6-8 may not support event.target, so we may decide to use event.srcElement.style.color instead.
}

text.addEventListener('click', changeFontColor)
