let box1=document.getElementById("user_post");
let box2 = document.getElementById("user_wishlist"); 


document.getElementById("btn1").addEventListener("click", function(){
    box2.style.display="none";
      box1.style.display="block";
})

document.getElementById("btn2").addEventListener("click", function(){
  box1.style.display="none";
  box2.style.display="block";
  })