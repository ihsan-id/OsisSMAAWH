# Fix mobile menu in pengurus-obtp.html
$contentOBTP = Get-Content "pengurus-obtp.html" -Raw -Encoding UTF8
$contentOBTP = $contentOBTP -replace "mobileMenu\.classList\.add\('active'\)", "mobileMenu.classList.add('show')"
$contentOBTP = $contentOBTP -replace "mobileMenu\.classList\.remove\('active'\)", "mobileMenu.classList.remove('show')"
Set-Content "pengurus-obtp.html" -Value $contentOBTP -Encoding UTF8

# Fix mobile menu in pengurus-mpk.html
$contentMPK = Get-Content "pengurus-mpk.html" -Raw -Encoding UTF8
$contentMPK = $contentMPK -replace "mobileMenu\.classList\.add\('active'\)", "mobileMenu.classList.add('show')"
$contentMPK = $contentMPK -replace "mobileMenu\.classList\.remove\('active'\)", "mobileMenu.classList.remove('show')"
Set-Content "pengurus-mpk.html" -Value $contentMPK -Encoding UTF8

# Add dark mode styles for mobile menu to style.css
$cssAppend = @"

/* Fix Mobile Menu Contrast in Dark Mode */
[data-theme="dark"] .mobile-menu {
    background: rgba(15, 23, 42, 0.95);
}
[data-theme="dark"] .mobile-content a {
    color: #F8FAFC;
}
[data-theme="dark"] .close-btn {
    color: #F8FAFC;
}
[data-theme="dark"] .mobile-menu .menu-btn {
    color: #F8FAFC;
}
"@
Add-Content "assets\css\style.css" -Value $cssAppend -Encoding UTF8
