let box1=document.getElementById("user_post_div");
let box2 = document.getElementById("user_wishlist"); 


function yourpost(){
  box2.style.display= "none";
  box1.style.display= "block";
}


function wishlist(){
  box1.style.display="none";
  box2.style.display="block";
}