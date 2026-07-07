/* ===========================================
            HERO JAVASCRIPT
=========================================== */

/* ===========================================
        BACKGROUND SLIDER
=========================================== */

const backgrounds = document.querySelectorAll(".hero__bg");
const indicators = document.querySelectorAll(".hero__indicator span");
const counterNum = document.querySelector(".hero__counter-num.active-num");

let currentSlide = 0;
const totalSlides = backgrounds.length;

function changeBackground(index) {

    backgrounds.forEach(bg => bg.classList.remove("active"));
    indicators.forEach(dot => dot.classList.remove("active"));

    backgrounds[index].classList.add("active");
    indicators[index].classList.add("active");

    // Update vertical counter
    if (counterNum) {
        const num = String(index + 1).padStart(2, "0");
        counterNum.textContent = num;
    }

}

function nextBackground() {

    currentSlide++;

    if (currentSlide >= backgrounds.length) {
        currentSlide = 0;
    }

    changeBackground(currentSlide);

}

// Ganti background setiap 5 detik
setInterval(nextBackground, 5000);

// Klik indicator
indicators.forEach((dot, index) => {

    dot.addEventListener("click", () => {

        currentSlide = index;
        changeBackground(index);

    });

});


/* ===========================================
        CHANGING TEXT
=========================================== */

const changingText = document.getElementById("changingText");

const words = [

    "Selamat Datang",
    "Welcome",
    "Ahlan wa Sahlan",
    "Sugeng Rawuh"

];

let wordIndex = 0;

function changeWord() {

    if (!changingText) return;

    changingText.style.opacity = 0;
    changingText.style.transform = "translateY(15px)";

    setTimeout(() => {

        wordIndex++;

        if (wordIndex >= words.length) {
            wordIndex = 0;
        }

        changingText.textContent = words[wordIndex];

        changingText.style.opacity = 1;
        changingText.style.transform = "translateY(0)";

    }, 350);

}

setInterval(changeWord, 3000);


/* ===========================================
        PARALLAX IMAGE
=========================================== */

const heroImage = document.querySelector(".hero__image");

if (heroImage) {
    document.addEventListener("mousemove", (e) => {

        const x = (window.innerWidth / 2 - e.clientX) / 40;
        const y = (window.innerHeight / 2 - e.clientY) / 40;

        heroImage.style.transform =
            `translate(${x}px, ${y}px)`;

    });
}


/* ===========================================
        BUTTON RIPPLE EFFECT
=========================================== */

const buttons = document.querySelectorAll(".btn");

buttons.forEach(button => {

    button.addEventListener("mouseenter", () => {

        button.style.transition = ".35s";

    });

});


/* ===========================================
        HERO FADE IN
=========================================== */

window.addEventListener("load", () => {

    const hero = document.querySelector(".hero");

    if (hero) {
        hero.style.opacity = "1";
        hero.style.transform = "translateY(0)";
    }

});


/* ===========================================
        FLOATING SHADOW
=========================================== */

const persons = document.querySelectorAll(".hero__person");

persons.forEach(person => {

    person.addEventListener("mouseenter", () => {

        person.style.filter =
            "drop-shadow(0 30px 50px rgba(0,0,0,.25))";

    });

    person.addEventListener("mouseleave", () => {

        person.style.filter = "none";

    });

});


/* ===========================================
        PROFILE CARD HOVER
=========================================== */

const profileCard = document.querySelector(".hero__profile");

if (profileCard) {

    profileCard.addEventListener("mousemove", (e) => {

        const rect = profileCard.getBoundingClientRect();

        const x = e.clientX - rect.left;
        const y = e.clientY - rect.top;

        profileCard.style.background = `
            radial-gradient(
                circle at ${x}px ${y}px,
                rgba(255,255,255,.28),
                rgba(255,255,255,.12)
            )
        `;

    });

    profileCard.addEventListener("mouseleave", () => {

        profileCard.style.background =
            "rgba(255,255,255,.12)";

    });

}


/* ===========================================
        SCROLL REVEAL — ALL SECTIONS
=========================================== */

const revealObserver = new IntersectionObserver((entries) => {

    entries.forEach(entry => {

        if (entry.isIntersecting) {

            entry.target.classList.add("show");

        }

    });

}, {

    threshold: .12

});

document.querySelectorAll(
    ".about__gallery,.about__content,.about__card," +
    ".proker__card,.divisi__card," +
    ".mpk__feature,.mpk__visual,.mpk__card-main," +
    ".kontak__info-card,.kontak__form"
).forEach(el => revealObserver.observe(el));

/* Hero elements langsung ditampilkan saat load */
window.addEventListener("load", () => {
    document.querySelectorAll(
        ".hero__content,.hero__image,.hero__profile,.hero__stat"
    ).forEach(el => el.classList.add("show"));
});


/* ===========================================
        KONTAK FORM HANDLER
=========================================== */

const kontakForm = document.getElementById("kontakForm");

if (kontakForm) {

    kontakForm.addEventListener("submit", (e) => {

        e.preventDefault();

        const btn = document.getElementById("btnKirim");
        const span = btn.querySelector("span");
        const icon = btn.querySelector("i");

        span.textContent = "Pesan Terkirim!";
        icon.className = "ri-check-line";
        btn.style.background = "linear-gradient(135deg,#16A34A,#15803D)";

        setTimeout(() => {

            span.textContent = "Kirim Pesan";
            icon.className = "ri-send-plane-fill";
            btn.style.background = "";
            kontakForm.reset();

        }, 3000);

    });

}

/* ===========================================
        DARK MODE TOGGLE
=========================================== */

const themeToggle = document.getElementById("themeToggle");
const currentTheme = localStorage.getItem("theme");

if (currentTheme) {
    document.documentElement.setAttribute("data-theme", currentTheme);
    if (themeToggle && currentTheme === "dark") {
        themeToggle.querySelector("i").className = "ri-sun-line";
    }
}

if (themeToggle) {
    themeToggle.addEventListener("click", () => {
        let theme = document.documentElement.getAttribute("data-theme");
        
        if (theme === "dark") {
            document.documentElement.setAttribute("data-theme", "light");
            localStorage.setItem("theme", "light");
            themeToggle.querySelector("i").className = "ri-moon-line";
        } else {
            document.documentElement.setAttribute("data-theme", "dark");
            localStorage.setItem("theme", "dark");
            themeToggle.querySelector("i").className = "ri-sun-line";
        }
    });
}

/* ===========================================
        SWIPER INITIALIZATION
=========================================== */

if (typeof Swiper !== 'undefined') {
    const prokerSwiper = new Swiper('.prokerSwiper', {
        slidesPerView: 1,
        spaceBetween: 30,
        loop: true,
        pagination: {
            el: '.swiper-pagination',
            clickable: true,
        },
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
        },
        breakpoints: {
            768: {
                slidesPerView: 2,
                spaceBetween: 40,
            }
        }
    });
}

/* ===========================================
        PARTICLES JS (KELIP-KELIP BACKGROUND)
=========================================== */
if (document.getElementById('proker-particles')) {
    particlesJS("proker-particles", {
        "particles": {
            "number": {
                "value": 80,
                "density": {
                    "enable": true,
                    "value_area": 800
                }
            },
            "color": {
                "value": ["#22C55E", "#4ADE80", "#16A34A"]
            },
            "shape": {
                "type": "circle"
            },
            "opacity": {
                "value": 0.7,
                "random": true,
                "anim": {
                    "enable": true,
                    "speed": 1.5,
                    "opacity_min": 0.1,
                    "sync": false
                }
            },
            "size": {
                "value": 4,
                "random": true,
                "anim": {
                    "enable": true,
                    "speed": 2,
                    "size_min": 0.5,
                    "sync": false
                }
            },
            "line_linked": {
                "enable": false
            },
            "move": {
                "enable": true,
                "speed": 0.6,
                "direction": "none",
                "random": true,
                "straight": false,
                "out_mode": "out",
                "bounce": false,
            }
        },
        "interactivity": {
            "detect_on": "canvas",
            "events": {
                "onhover": {
                    "enable": true,
                    "mode": "bubble"
                },
                "onclick": {
                    "enable": false
                },
                "resize": true
            },
            "modes": {
                "bubble": {
                    "distance": 150,
                    "size": 8,
                    "duration": 2,
                    "opacity": 1,
                    "speed": 3
                }
            }
        },
        "retina_detect": true
    });
}

if (document.getElementById('hero-particles')) {
    particlesJS("hero-particles", {
        "particles": {
            "number": {
                "value": 100,
                "density": {
                    "enable": true,
                    "value_area": 800
                }
            },
            "color": {
                "value": ["#ffffff", "#4ADE80", "#22C55E"]
            },
            "shape": {
                "type": "circle"
            },
            "opacity": {
                "value": 0.8,
                "random": true,
                "anim": {
                    "enable": true,
                    "speed": 1.5,
                    "opacity_min": 0.2,
                    "sync": false
                }
            },
            "size": {
                "value": 4,
                "random": true,
                "anim": {
                    "enable": true,
                    "speed": 2,
                    "size_min": 0.5,
                    "sync": false
                }
            },
            "line_linked": {
                "enable": false,
                "distance": 150,
                "color": "#4ADE80",
                "opacity": 0.4,
                "width": 1
            },
            "move": {
                "enable": true,
                "speed": 1,
                "direction": "none",
                "random": true,
                "straight": false,
                "out_mode": "out",
                "bounce": false,
            }
        },
        "interactivity": {
            "detect_on": "window",
            "events": {
                "onhover": {
                    "enable": true,
                    "mode": "grab"
                },
                "onclick": {
                    "enable": true,
                    "mode": "push"
                },
                "resize": true
            },
            "modes": {
                "grab": {
                    "distance": 250,
                    "line_linked": {
                        "opacity": 0.8
                    }
                },
                "push": {
                    "particles_nb": 4
                }
            }
        },
        "retina_detect": true
    });
}

// Lightbox Galeri
document.addEventListener('DOMContentLoaded', () => {
    const galleryCards = document.querySelectorAll('.galeri__card');
    const lightbox = document.getElementById('lightbox');
    
    if (galleryCards.length > 0 && lightbox) {
        const lightboxImg = lightbox.querySelector('img');
        const lightboxClose = lightbox.querySelector('.lightbox__close');

        // Open Lightbox
        galleryCards.forEach(card => {
            card.addEventListener('click', () => {
                const img = card.querySelector('img');
                if (img) {
                    lightboxImg.src = img.src;
                    lightbox.classList.add('active');
                    document.body.style.overflow = 'hidden'; // Prevent scrolling
                }
            });
        });

        // Close Lightbox
        const closeLightbox = () => {
            lightbox.classList.remove('active');
            document.body.style.overflow = '';
            setTimeout(() => { lightboxImg.src = ''; }, 300);
        };

        lightboxClose.addEventListener('click', closeLightbox);
        
        // Close when clicking outside image
        lightbox.addEventListener('click', (e) => {
            if (e.target === lightbox) {
                closeLightbox();
            }
        });

        // Close on Escape key
        document.addEventListener('keydown', (e) => {
            if (e.key === 'Escape' && lightbox.classList.contains('active')) {
                closeLightbox();
            }
        });
    }
});

// Alumni Swiper
document.addEventListener('DOMContentLoaded', () => {
    const alumniEl = document.querySelector('.alumni-swiper');
    if (alumniEl) {
        new Swiper('.alumni-swiper', {
            slidesPerView: 1,
            spaceBetween: 30,
            loop: true,
            speed: 8000,
            allowTouchMove: false, // Prevent breaking the continuous animation
            autoplay: {
                delay: 0,
                disableOnInteraction: false,
            },
            breakpoints: {
                768: {
                    slidesPerView: 2,
                },
                1024: {
                    slidesPerView: 3,
                }
            }
        });
    }
});