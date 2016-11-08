var p = document.getElementsByTagName("p")
p1 = p[0]
p1.style.color= "deepskyblue";
p1.style.border= "2px solid gold";

function changepixelcolor(event) { 
event.target.style.backgroundColor= "yellow";
}

function changepixelcolorback(event) { 
event.target.style.backgroundColor= "whitesmoke";
}

var body = document.getElementsByTagName("body");
body1 = body[0]
body1.addEventListener("mouseover", changepixelcolor);
body1.addEventListener("mouseout", changepixelcolorback);