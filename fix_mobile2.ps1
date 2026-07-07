$content = Get-Content -Path "assets\css\style.css" -Raw -Encoding UTF8
$content = $content -replace '(?s)flex-direction:column;\s*text-align:center;\s*gap:20px;', "flex-direction:row;`n        text-align:left;`n        align-items:center;`n        gap:10px;"
$content = $content -replace '(?s)\.hero__stat\{\s*width:130px;[^\}]*\}', ".hero__stat{`n        display: none;`n    }"

# Add smaller font styles for the mobile profile block so it fits in one row
$newProfileStyles = @"
    }
    .hero__profile .profile h3 {
        font-size: 0.9rem;
    }
    .hero__profile .profile p {
        font-size: 0.75rem;
    }
    .hero__profile .profile__logo {
        width: 50px;
        height: 50px;
    }
    .hero__profile .profile__logo img {
        width: 35px;
"@
$content = $content -replace '(?s)margin-top: -40px;\s*\}', "margin-top: -40px;$newProfileStyles`n    }"

Set-Content -Path "assets\css\style.css" -Value $content -Encoding UTF8
