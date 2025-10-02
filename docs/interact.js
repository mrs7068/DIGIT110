window.addEventListener('DOMContentLoaded', init, false);

function init() {
    alert('Click the listed fruits to spice up the page!');

    const colors = ["#ff7878", "#fc9f58", "#fff570", "#8a9dff"];
    const listItems = document.querySelectorAll("li");

    listItems.forEach((item, index) => {
        item.addEventListener('click', function() {
            // Change background color
            document.getElementById("body").style.backgroundColor = colors[index];
            
            // Random background color from list (could add more to "colors" for more variety)
            /* const color = colors[Math.floor(Math.random() * colors.length)];
            document.getElementById("body").style.backgroundColor = color; */

            // Toggle bold text
            listItems.forEach((li, i) => {
                li.style.fontWeight = i === index ? "bold" : "normal";
            });
        });
    });
}