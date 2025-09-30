window.addEventListener('DOMContentLoaded',init,false);
            
function init() {
    alert('Click the listed fruits to spice up the page!');
    var list = document.getElementsByTagName("li")
    list[0].addEventListener('click', changeBackground0, false);
    list[1].addEventListener('click', changeBackground1, false);
    list[2].addEventListener('click', changeBackground2, false);
    list[3].addEventListener('click', changeBackground3, false);
}

function changeBackground0() {
    var body = document.getElementById("body")
    { body.style.backgroundColor = "#ff7878"; }
    
    var li0 = document.getElementById("li0")
    { li0.style.fontWeight = "bold"; }
    var li1 = document.getElementById("li1")
    { li1.style.fontWeight = "normal"; }
    var li2 = document.getElementById("li2")
    { li2.style.fontWeight = "normal"; }
    var li3 = document.getElementById("li3")
    { li3.style.fontWeight = "normal"; }
}

function changeBackground1() {
    var body = document.getElementById("body")
    { body.style.backgroundColor = "#fc9f58";  }
    
    var li0 = document.getElementById("li0")
    { li0.style.fontWeight = "normal"; }
    var li1 = document.getElementById("li1")
    { li1.style.fontWeight = "bold"; }
    var li2 = document.getElementById("li2")
    { li2.style.fontWeight = "normal"; }
    var li3 = document.getElementById("li3")
    { li3.style.fontWeight = "normal"; }
}

function changeBackground2() {
    var body = document.getElementById("body")
    { body.style.backgroundColor = "#fff570";  }
    
    var li0 = document.getElementById("li0")
    { li0.style.fontWeight = "normal"; }
    var li1 = document.getElementById("li1")
    { li1.style.fontWeight = "normal"; }
    var li2 = document.getElementById("li2")
    { li2.style.fontWeight = "bold"; }
    var li3 = document.getElementById("li3")
    { li3.style.fontWeight = "normal"; }
}

function changeBackground3() {
    var body = document.getElementById("body")
    { body.style.backgroundColor = "#8a9dff";  }
    
    var li0 = document.getElementById("li0")
    { li0.style.fontWeight = "normal"; }
    var li1 = document.getElementById("li1")
    { li1.style.fontWeight = "normal"; }
    var li2 = document.getElementById("li2")
    { li2.style.fontWeight = "normal"; }
    var li3 = document.getElementById("li3")
    { li3.style.fontWeight = "bold"; }
}
