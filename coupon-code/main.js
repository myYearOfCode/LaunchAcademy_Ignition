// your code, here
let coupon = document.getElementById("click-here")
let couponReveal = document.getElementById("coupon-code")

let revealCode = (event) => {
  couponReveal.textContent = '50OFF-YOWZA!'
}

coupon.addEventListener('click', revealCode)
