window.addEventListener('DOMContentLoaded', init, false);

function init() {
    alert('Click the listed fruits to spice up the page!');

    const colors = ["#ff7878", "#fc9f58", "#fff570", "#8a9dff"];
    const listItems = document.querySelectorAll("li");

    const colorToggle = document.getElementById("colorToggle");
    const boldToggle = document.getElementById("boldToggle");

    listItems.forEach((item, index) => {
        item.addEventListener('click', function () {
            // Change background color
            if (colorToggle.checked) {
                document.getElementById("body").style.backgroundColor = colors[index];
            }

            // Toggle bold text
            if (boldToggle.checked) {
                listItems.forEach((li, i) => {
                    li.style.fontWeight = i === index ? "bold" : "normal";
                });
            } else {
                listItems.forEach(li => {
                    li.style.fontWeight = "normal";
                });
            }
        });
    });
}
