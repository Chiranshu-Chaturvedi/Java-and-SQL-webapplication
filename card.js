
let Card = []
let sum = 0
let blackJack = false
let isAlive = false
let message = ""
let messageEl = document.getElementById("message-el")
let sumEl = document.getElementById("sum-el")
// let sumEl = document.querySelector("#sum-el")
let cardsEl = document.getElementById("cards-el")
//Object
// let player = {
//  name :"Player",//clases
//  chip : 145
// }
// let playerEl = document.getElementById("player-el")
// playerEl.textContent = player.name + " : ₹" + player.chip
function getRandomCard(){
   let randomNumber = Math.floor(Math.random() *13) + 1
   if (randomNumber === 11){
      return 1
   } else if (randomNumber === 1 || randomNumber === 12 || randomNumber === 13){
      return 10
    }else {
      return randomNumber
   }
}
 function startGame(){
   isAlive = true
   let firstCard = getRandomCard()
   let secondCard = getRandomCard()
   Card = [firstCard, secondCard]
   sum = firstCard + secondCard 
   Game()
}
    
function Game(){
   cardsEl.textContent = "Cards : " 
   for(i=0; i < Card.length; i++){
      cardsEl.textContent += Card[i] +" "
   }
   sumEl.textContent = "Sum : " + sum
   //sumEl.textContent += sum
   if (sum < 21){
      message = ("Do you want a new card ?")
      } else if (sum === 21){
         message = ("yesss!! Its a Blackjack.")
         blackJack = true
      } else {
         message = (" You're OUT of the game!")
         isAlive = false
      }
      messageEl.textContent = message
     
   } 

function newCard(){
       if(isAlive === true && blackJack === false){
       let Newcard = getRandomCard()
        sum += Newcard
        Card.push(Newcard)
       Game()
       }
        else if (blackJack === true){
         message= ("Refresh the Page plz")
         messageEl.textContent = message 
        }
        else {
          message= ("No! You are Out No More cards.")
          messageEl.textContent = message
          // blackJack = false
      
       }
   //  sw="Drawing new card"
   //  console.log(sw)
      }
