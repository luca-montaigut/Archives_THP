// Fonctionnalité 1
const footer = document.getElementsByTagName('footer')[0]
let click = 0

footer.addEventListener('click', function () {
  click++
  console.log(`clic numéro ${click}`)
})

// Fonctionnalité 2
const button = document.getElementsByTagName('button')[0]

button.addEventListener('click', function () {
  document.getElementById('navbarHeader').classList.toggle('collapse')
})

// Fonctionnalité 3
const edit = document.querySelectorAll('.btn-outline-secondary')[0]
const card = document.querySelectorAll('.card-text')[0]

edit.addEventListener('click', function () {
  card.style.color = 'red'
})

// Fonctionnalité 4
const edit2 = document.querySelectorAll('.btn-outline-secondary')[1]
const card2 = document.querySelectorAll('.card-text')[1]

edit2.addEventListener('click', function () {
  if (card2.style.color === '') {
    card2.style.color = 'green'
  } else {
    card2.style.color = ''
  }
})

// Fonctionnalité 5
const navbar = document.getElementsByTagName('header')[0]
const bootstrap = document.getElementsByTagName('link')[0]

navbar.addEventListener('dblclick', function () {
  if (bootstrap.getAttribute('href') !== null) {
    bootstrap.removeAttribute('href')
  } else {
    bootstrap.setAttribute('href', 'https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css')
  }
})

// Fonctionnalité 6
const view = document.querySelectorAll('.btn-success')
const text = document.querySelectorAll('.card-text')
const img = document.querySelectorAll('.card-img-top')

for (let i = 0; i < view.length; i++) {
  view[i].addEventListener('mouseover', function () {
    if (text[i].style.display !== 'none') {
      img[i].style.width = '20%'
      text[i].style.display = 'none'
    } else {
      img[i].style.width = '100%'
      text[i].style.display = ''
    }
  })
}

// Fonctionnalité 7
const parent = document.querySelector('.album .row')
const btn = document.querySelector('section .btn-secondary')

btn.addEventListener('click', function (e) {
  e.preventDefault()
  parent.insertBefore(parent.lastElementChild, parent.firstElementChild)
})

// Fonctionnalité 8
const btn2 = document.querySelector('section .btn-primary')

btn2.removeAttribute('href')

btn2.addEventListener('click', function (e) {
  e.preventDefault()
  parent.insertBefore(parent.firstElementChild, parent.lastElementChild.nextSibling)
})

// Fonctionnalité 9
window.addEventListener('keypress', function (e) {
  if (window.getSelection().anchorNode !== null) {
    if ('KeyQ' && window.getSelection().anchorNode.data === 'JS & Events') {
      switch (e.code) {
        case 'KeyQ':
          document.body.className = ''
          document.body.classList.add('col-md-4')
          break
        case 'KeyY':
          document.body.className = ''
          document.body.classList.add('offset-4', 'col-md-4')
          break
        case 'KeyP':
          document.body.className = ''
          document.body.classList.add('offset-8', 'col-md-4')
          break
        case 'KeyB':
          document.body.className = ''
          break
      }
    }
  }
})

// Fonctionnalité BONUS - Easter Egg
const luluCode = ['KeyL', 'KeyU', 'KeyC', 'KeyQ']
let n = 0

window.addEventListener('keypress', function (e) {
  e.code === luluCode[n] ? n++ : n = 0
  if (n === luluCode.length) {
    console.log('\n\n |--------------------------------------------------------|')
    console.log('  |  \"...zZzzz..zZzz...zZz...Hum ?! Plait-il ? L-U-C-A ?   |')
    console.log('  |  Et ouais ma gueule encore mieux que le Konami Code !" |')
    console.log('  |--------------------------------------------------------|')
    console.log('                                           |')
    console.log('                                           |______   _/)/)')
    console.log('                                                    (-.- )')
    console.log('                                                  (")(")_o\n')
    alert('\n\n|---------------------------------------------------------------------------------|\n|  "...zZzzz..zZzz...zZz...Hum ?! Plait-il ? L-U-C-A ?                |\n|  Et ouais ma gueule encore mieux que le Konami Code !" |\n|---------------------------------------------------------------------------------|\n                                         |\n                                         |______   _/)/)\n                                                      (-.- )\n                                                  (")(")_o\n\n')
  }
})
