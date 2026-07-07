const navbar = document.getElementById("navbar");

window.addEventListener("scroll", () => {

    if(window.scrollY > 50){

        navbar.classList.add("scrolled");

    }else{

        navbar.classList.remove("scrolled");

    }

});

/* Mobile Menu */

const menuBtn = document.getElementById("menuBtn");

const closeBtn = document.getElementById("closeBtn");

const mobileMenu = document.getElementById("mobileMenu");

menuBtn.addEventListener("click", () => {

    mobileMenu.classList.add("show");

});

closeBtn.addEventListener("click", () => {

    mobileMenu.classList.remove("show");

});

/* Progress Bar */

const progressBar = document.getElementById("progressBar");

window.addEventListener("scroll", () => {

    const totalHeight =
        document.documentElement.scrollHeight -
        window.innerHeight;

    const progress =
        (window.scrollY / totalHeight) * 100;

    progressBar.style.width =
        progress + "%";

});