$content = Get-Content -Path "assets\css\style.css" -Raw -Encoding UTF8
$content = $content -replace '(?s)(\.hero__profile\{[^\}]*)margin-top:\s*30px;', '$1margin-top: -40px;'
$content = $content -replace '(?s)(\.hero__stat\{[^\}]*transform:\s*none;)\s*\}', "`$1`n        z-index: 1;`n    }"
Set-Content -Path "assets\css\style.css" -Value $content -Encoding UTF8
