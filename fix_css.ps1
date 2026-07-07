$cssMissing = @"
.logo-text h2{
    color:var(--primary);
    font-size:1.1rem;
    font-family:'Poppins';
}
.logo-text span{
    color:var(--gray);
    font-size:.75rem;
}
.nav-actions {
    display: flex;
    align-items: center;
    gap: 15px;
}
.desktop-menu{
    display:flex;
    align-items:center;
    gap:10px;
}
.desktop-menu a,
.dropdown-btn{
    text-decoration:none;
    color:var(--dark);
    font-weight:600;
    font-size:1rem;
    padding:10px 18px;
    border-radius:999px;
    transition:.3s;
    border:none;
    background:none;
    cursor:pointer;
    font-family:inherit;
}
.desktop-menu a:hover,
.dropdown-btn:hover{
    background: var(--badge-green-bg);
    color:var(--primary);
}
.active{
    background: var(--badge-green-bg);
    color:var(--primary) !important;
}
.dropdown{
    position:relative;
}
.dropdown-content{
    position:absolute;
    top:70px;
    left:50%;
    transform:translateX(-50%);
    width:320px;
    background: var(--card-bg);
    border-radius:24px;
    padding:12px;
    box-shadow:0 20px 50px rgba(0,0,0,.12);
    opacity:0;
    visibility:hidden;
    transition:.3s;
}
.dropdown:hover .dropdown-content{
    opacity:1;
    visibility:visible;
    top:60px;
}
.dropdown-card{
    display:flex !important;
    align-items:center;
    gap:15px;
    border-radius:18px;
    padding:16px !important;
}
.dropdown-card:hover{
    transform:translateY(-3px);
}
.dropdown-card i{
    font-size:26px;
    color:var(--primary);
}
.dropdown-card h4{
    margin-bottom:4px;
}
.dropdown-card p{
    font-size:.8rem;
    color:var(--gray);
}
.cta-btn{
    text-decoration:none;
    color:white;
    font-weight:700;
    padding:14px 22px;
    border-radius:999px;
    background:linear-gradient(135deg, #22C55E, #15803D);
    box-shadow: 0 10px 30px rgba(34,197,94,.35);
    transition:.3s;
}
.cta-btn:hover{
    transform: translateY(-3px) scale(1.03);
}
.menu-btn{
    display:none;
    border:none;
    background:none;
    font-size:2rem;
    cursor:pointer;
}
.mobile-menu{
    position:fixed;
    inset:0;
    background:rgba(255,255,255,.92);
    backdrop-filter:blur(20px);
    z-index:2000;
    display:flex;
    justify-content:center;
    align-items:center;
    transform:translateY(-100%);
    transition:.4s;
}
.mobile-menu.show{
    transform:translateY(0);
}
.close-btn{
    position:absolute;
    top:30px;
    right:30px;
    border:none;
    background:none;
    font-size:2rem;
    cursor:pointer;
}
.mobile-content{
    display:flex;
    flex-direction:column;
    gap:30px;
    text-align:center;
}
.mobile-content a{
    text-decoration:none;
    font-size:1.5rem;
    font-weight:700;
    color:var(--dark);
}
.dummy{
    height:100vh;
}
@media(max-width:992px){
    .desktop-menu,
    .cta-btn{
        display:none;
    }
    .menu-btn{
        display:block;
    }
    .logo-text span{
        display:none;
    }
}
:root {
    --primary: #16A34A;
    --primary-dark: #15803D;
    --secondary: #22C55E;
    --accent: #4ADE80;
    --dark: #0F172A;
    --gray: #64748B;
    --light: #F8FAFC;
    --glass: rgba(255,255,255,.15);
    --glass-border: rgba(255,255,255,.25);
}
.hero{
    position:relative;
    width:100%;
    min-height:100vh;
    overflow:hidden;
    display:flex;
    align-items:center;
    justify-content:center;
    padding:150px 8% 80px;
}
.hero__background{
    position:absolute;
    inset:0;
    overflow:hidden;
    z-index:-3;
}
.hero__bg{
    position:absolute;
    width:100%;
    height:100%;
    object-fit:cover;
    opacity:0;
    transition:opacity 1.3s ease;
    transform:scale(1.08);
}
.hero__bg.active{
    opacity:1;
    transform:scale(1);
}
.hero__overlay{
    position:absolute;
    inset:0;
    background: linear-gradient(90deg, rgba(0,0,0,.70), rgba(0,0,0,.45), rgba(0,0,0,.15));
    z-index:2;
}
.hero__blur{
    position:absolute;
    border-radius:50%;
    filter:blur(130px);
    opacity:.45;
    z-index:-1;
}
.blur-1{
    width:320px;
    height:320px;
    background:#4ADE80;
    top:100px;
    left:-120px;
}
.blur-2{
    width:260px;
    height:260px;
    background:#22C55E;
    right:-80px;
    bottom:40px;
}
.container{
    width:100%;
    max-width:1200px;
    padding: 0 20px;
    margin:auto;
}
.hero__container{
    display:grid;
    grid-template-columns:1.05fr .95fr;
    align-items:center;
    gap:80px;
    position:relative;
    z-index:10;
}
.hero__content{
    color:white;
    animation:fadeLeft .9s ease;
}
.hero__badge{
    display:inline-flex;
    align-items:center;
    gap:10px;
    padding:10px 18px;
    border-radius:999px;
    background:rgba(255,255,255,.12);
    backdrop-filter:blur(12px);
    border:1px solid rgba(255,255,255,.18);
    font-size:.82rem;
    font-weight:600;
    letter-spacing:.5px;
    margin-bottom:25px;
}
.hero__dot{
    width:10px;
    height:10px;
    border-radius:50%;
    background:#4ADE80;
    box-shadow: 0 0 10px #4ADE80, 0 0 25px #4ADE80;
}
.hero__small-title{
    font-size:1rem;
    color:#bbf7d0;
    font-weight:600;
    letter-spacing:2px;
    margin-bottom:12px;
    text-transform:uppercase;
}
.hero__title{
    font-family:'Poppins',sans-serif;
    font-size:4.8rem;
    font-weight:800;
    line-height:1.05;
    margin-bottom:10px;
}
.hero__title span{
    color:white;
    position:relative;
}
.hero__title span::after{
    content:"";
    position:absolute;
    left:0;
    bottom:-8px;
    width:100%;
    height:6px;
    border-radius:50px;
    background:linear-gradient(90deg, #22C55E, #4ADE80);
}
.hero__school{
    font-family:'Poppins',sans-serif;
    font-size:3.5rem;
    font-weight:700;
    line-height:1.1;
    color:#dcfce7;
    margin-bottom:28px;
}
.hero__description{
    max-width:620px;
    font-size:1.08rem;
    line-height:1.9;
    color:rgba(255,255,255,.88);
}
.hero h1::selection,
.hero h2::selection,
.hero p::selection{
    background:#4ADE80;
    color: var(--text-main);
}
@keyframes fadeLeft{
    from{ opacity:0; transform:translateX(-60px); }
    to{ opacity:1; transform:translateX(0); }
}
.hero__buttons{
    display:flex;
    align-items:center;
    gap:18px;
    margin-top:40px;
    margin-bottom:45px;
    flex-wrap:wrap;
}
.btn{
    display:inline-flex;
    align-items:center;
    gap:10px;
    text-decoration:none;
    padding:16px 30px;
    border-radius:999px;
    font-weight:700;
    transition:.35s ease;
    position:relative;
    overflow:hidden;
}
.btn i{
    font-size:20px;
}
.btn-primary{
    background:linear-gradient(135deg, #22C55E, #15803D);
    color:white;
    box-shadow: 0 12px 35px rgba(34,197,94,.35);
}
.btn-primary:hover{
    transform:translateY(-5px);
    box-shadow: 0 20px 45px rgba(34,197,94,.45);
}
.btn-outline{
    color:white;
    border:1px solid rgba(255,255,255,.35);
    backdrop-filter:blur(18px);
    background:rgba(255,255,255,.08);
}
.btn-outline:hover{
    background: var(--card-bg);
    color:#16A34A;
    transform:translateY(-5px);
}
.hero__social{
    display:flex;
    align-items:center;
    gap:16px;
}
.hero__social span{
    font-size:.95rem;
    color:#E2E8F0;
    margin-right:8px;
}
.hero__social a{
    width:48px;
    height:48px;
    border-radius:50%;
    display:flex;
    justify-content:center;
    align-items:center;
    text-decoration:none;
    color:white;
    font-size:20px;
    background:rgba(255,255,255,.08);
    backdrop-filter:blur(15px);
    border:1px solid rgba(255,255,255,.15);
    transition:.35s;
}
.hero__social a:hover{
    transform:translateY(-6px);
    background:#16A34A;
}
.hero__image{
    position:relative;
    display:flex;
    justify-content:center;
    align-items:center;
    animation:fadeRight 1s ease;
}
.hero__circle{
    position:absolute;
    width:500px;
    height:500px;
    border-radius:50%;
    background:radial-gradient(circle, rgba(74,222,128,.65), rgba(34,197,94,.18), transparent);
    filter:blur(10px);
}
.hero__person{
    position:relative;
    max-width:380px;
    z-index:5;
    animation:floating 5s ease-in-out infinite;
    user-select:none;
    pointer-events:none;
}
.hero__wakil{
    position:absolute;
    right:-40px;
    bottom:-10px;
    max-width:300px;
    animation-delay:2s;
}
.hero__ketua{
    margin-right:120px;
}
.hero__stat{
    position:absolute;
    top:40px;
    left:-30px;
    width:180px;
    padding:22px;
    border-radius:28px;
    background:rgba(255,255,255,.12);
    backdrop-filter:blur(25px);
    border:1px solid rgba(255,255,255,.2);
    color:white;
    text-align:center;
    z-index:20;
    box-shadow: 0 15px 45px rgba(0,0,0,.15);
    animation:floating 4s ease-in-out infinite;
}
.hero__stat i{
    font-size:34px;
    color:#4ADE80;
}
.hero__stat h2{
    font-size:2rem;
    margin:10px 0 4px;
}
.hero__stat p{
    font-size:.95rem;
    color:#E2E8F0;
}
.hero__profile{
    position:absolute;
    bottom:-20px;
    left:50%;
    transform:translateX(-50%);
    width:95%;
    display:flex;
    justify-content:space-between;
    align-items:center;
    gap:25px;
    padding:24px 28px;
    border-radius:28px;
    background:rgba(255,255,255,.12);
    backdrop-filter:blur(30px);
    border:1px solid rgba(255,255,255,.2);
    color:white;
    z-index:25;
    box-shadow: 0 15px 45px rgba(0,0,0,.12);
}
.profile{
    flex:1;
}
.profile small{
    color:#BBF7D0;
    font-size:.8rem;
    display:block;
    margin-bottom:5px;
}
.profile h3{
    font-family:'Poppins',sans-serif;
    font-size:1.25rem;
    margin-bottom:6px;
}
.profile p{
    font-size:.9rem;
    color:#E2E8F0;
}
.profile__logo{
    width:72px;
    height:72px;
    border-radius:50%;
    display:flex;
    justify-content:center;
    align-items:center;
    background: var(--card-bg);
    box-shadow: 0 12px 35px rgba(0,0,0,.15);
}
.profile__logo img{
    width:52px;
}
@keyframes floating{
    0%{ transform:translateY(0); }
    50%{ transform:translateY(-14px); }
    100%{ transform:translateY(0); }
}
@keyframes fadeRight{
    from{ opacity:0; transform:translateX(60px); }
    to{ opacity:1; transform:translateX(0); }
}
.hero__indicator{
    position:absolute;
    bottom:35px;
    left:50%;
    transform:translateX(-50%);
    display:flex;
    gap:12px;
    z-index:100;
}
.hero__indicator span{
    width:12px;
    height:12px;
    border-radius:50%;
    background:rgba(255,255,255,.35);
    transition:.4s;
    cursor:pointer;
}
.hero__indicator span.active{
    width:42px;
    border-radius:999px;
    background:#4ADE80;
}
.hero__scroll{
    position:absolute;
    right:45px;
    bottom:35px;
    display:flex;
    align-items:center;
    gap:10px;
    color:white;
    font-size:.9rem;
    letter-spacing:1px;
    z-index:100;
    animation:bounce 2s infinite;
}
.hero__scroll i{
    font-size:20px;
}
.hero__profile:hover{
    transform:translateX(-50%) translateY(-8px);
    transition:.35s;
}
.hero__stat:hover{
    transform:translateY(-8px);
    transition:.35s;
}
.hero__person:hover{
    transform:scale(1.03);
    transition:.4s;
}
.hero__circle{
    animation:rotateCircle 20s linear infinite;
}
@keyframes bounce{
    0%,100%{ transform:translateY(0); }
    50%{ transform:translateY(-10px); }
}
@keyframes rotateCircle{
    from{ transform:rotate(0deg); }
    to{ transform:rotate(360deg); }
}
@media (max-width:1400px){
    .hero__title{ font-size:4rem; }
    .hero__school{ font-size:3rem; }
    .hero__person{ max-width:330px; }
    .hero__wakil{ max-width:260px; }
}
@media(max-width:1200px){
    .hero{ padding:140px 6% 70px; }
    .hero__container{ gap:50px; }
    .hero__title{ font-size:3.5rem; }
    .hero__school{ font-size:2.6rem; }
    .hero__description{ font-size:1rem; }
    .hero__person{ max-width:300px; }
    .hero__wakil{ max-width:240px; right:-20px; }
    .hero__profile{ padding:20px; }
}
@media(max-width:992px){
    .hero{ padding-top:150px; }
    .hero__container{
        grid-template-columns:1fr;
        text-align:center;
        gap:70px;
    }
    .hero__content{
        display:flex;
        flex-direction:column;
        align-items:center;
    }
    .hero__description{ max-width:650px; }
    .hero__buttons{ justify-content:center; }
    .hero__social{ justify-content:center; }
    .hero__image{ margin-top:30px; }
    .hero__stat{ left:0; }
    .hero__profile{ width:100%; }
    .hero__scroll{ display:none; }
}
@media(max-width:768px){
    .hero{ padding:120px 20px 60px; }
    .hero__title{ font-size:2.7rem; }
    .hero__school{ font-size:2rem; }
    .hero__description{
        font-size:.95rem;
        line-height:1.8;
    }
    .hero__badge{
        font-size:.72rem;
        padding:9px 16px;
    }
    .hero__buttons{
        flex-direction:column;
        width:100%;
    }
    .btn{
        width:100%;
        justify-content:center;
    }
    .hero__person{ max-width:220px; }
    .hero__wakil{
        max-width:170px;
        right:0;
    }
    .hero__circle{
        width:320px;
        height:320px;
    }
    .hero__profile{
        flex-direction:column;
        text-align:center;
        gap:20px;
        position:relative;
        left:0;
        bottom:0;
        transform:none;
        margin-top:30px;
    }
    .hero__stat{
        width:130px;
        padding: 15px;
        top:10%;
        left:0;
        transform:none;
    }
    .hero__stat h2 {
        font-size: 1.5rem;
    }
    .hero__stat--2 {
        top:auto;
        bottom:15%;
        left:auto;
        right:0;
    }
    .hero__indicator{ bottom:15px; }
}
/* ==========================================
          SMALL MOBILE
========================================== */
"@

$content = Get-Content -Path "assets\css\style.css" -Raw
$content = $content -replace '(?s)rotate\(-8deg\)\s*}', "rotate(-8deg)`n}`n$cssMissing`n"
Set-Content -Path "assets\css\style.css" -Value $content -Encoding UTF8
