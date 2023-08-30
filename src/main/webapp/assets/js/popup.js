// Add event listeners to open and close the modal
document.querySelectorAll(".clickable-image").forEach(function(image) {
    image.addEventListener("click", function() {
        document.getElementById("myModal").style.display = "block";
        document.body.classList.add("modal-open"); // Add this line to disable scrolling
    });
});
// ... (your existing event listener code) ...

document.getElementById("buttonMonday").addEventListener("click", function() {
    resetButtonColors();
    this.classList.add("active-button");
    updateImageCaption(generateRandomTime());
});

document.getElementById("buttonTuesday").addEventListener("click", function() {
    resetButtonColors();
    this.classList.add("active-button");
    updateImageCaption(generateRandomTime());
});

document.getElementById("buttonWednesday").addEventListener("click", function() {
    resetButtonColors();
    this.classList.add("active-button");
    updateImageCaption(generateRandomTime());
});

document.getElementById("buttonThursday").addEventListener("click", function() {
    resetButtonColors();
    this.classList.add("active-button");
    updateImageCaption(generateRandomTime());
});

document.getElementById("buttonFriday").addEventListener("click", function() {
    resetButtonColors();
    this.classList.add("active-button");
    updateImageCaption(generateRandomTime());
});

function resetButtonColors() {
    var buttons = document.querySelectorAll(".modal-button");
    buttons.forEach(function(button) {
        button.classList.remove("active-button");
    });
}
/*
function generateRandomTime() {
    var times = ["8-10", "10-12", "12-14", "14-16", "16-18", "18-20", "20-22", "22-24"]; // Add more time options if needed
    var randomIndex = Math.floor(Math.random() * times.length);
    return times[randomIndex];
}

function updateImageCaption(text) {
    var caption = document.querySelector(".image-caption h3");
    caption.textContent = text;
}*/



document.getElementsByClassName("close")[0].addEventListener("click", function() {
    document.getElementById("myModal").style.display = "none";
    document.body.classList.remove("modal-open"); // Add this line to re-enable scrolling

    // Navigate to another JSP file
    window.location.href = "gnc.jsp"});



function resetButtonColors() {
    var buttons = document.querySelectorAll(".modal-button");
    buttons.forEach(function(button) {
        button.classList.remove("active-button");
    });
}