
i = 0

imgs = [
  'cradle'
  'sun-cradle'
  'wallaby'
  'bayoffires'
  'branch'
  'sun-grass'
  'devil'
  'field'
  'freycinet'
  'lake'
  'lizard'
  'richmond'
  'sun-road'
]

next = ->
  i++
  i = 0 if i is imgs.length
  img = imgs[i]
  console.log img
  active = document.querySelector('.bg.active')
  inactive = document.querySelector('.bg.inactive')
  inactive.setAttribute('style', "background-image: url('img/tazzie/#{img}.jpg')")
  setTimeout ->
    active.setAttribute('class', 'bg inactive')
    inactive.setAttribute('class', 'bg active')
    setTimeout next, 3*1000
  , 12*1000

setTimeout next, 12*1000


