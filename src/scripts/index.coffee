
i = 0

imgs = [
  'cradle'
  'branch'
  'sun-grass'
  'field'
]

next = ->
  i++
  i = 0 if i is imgs.length
  img = imgs[i]
  console.log img
  active = document.querySelector('.bg.active')
  inactive = document.querySelector('.bg.inactive')
  inactive.setAttribute('style', "background-image: url('img/#{img}.jpg')")
  setTimeout ->
    active.setAttribute('class', 'bg inactive')
    inactive.setAttribute('class', 'bg active')
  , 3*1000

setInterval next, 10*1000


