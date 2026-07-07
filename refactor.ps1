$filePath = "c:\Users\hp\Documents\Ihsan\Website osis SMA AWH\assets\css\style.css"
$content = Get-Content $filePath -Raw

$rootVars = @"
:root{

    --primary:#16A34A;
    --secondary:#22C55E;
    --accent:#4ADE80;
    
    --card-bg:#FFFFFF;
    --section-bg:#F8FAFC;
    --text-main:#0F172A;
    --text-muted:#64748B;
    --border-color:#E2E8F0;
    
    --badge-green-bg:#dcfce7;
    --badge-blue-bg:#dbeafe;
    --badge-yellow-bg:#fef3c7;

    --dark:#0F172A;
    --gray:#64748B;
    --bg:#F8FAFC;
"@
$content = $content -replace ':root\s*\{([\s\S]*?)--bg:#F8FAFC;\s*\}', ($rootVars + "`n}")

$darkVars = @"
[data-theme="dark"] {
    --bg: #0F172A;
    --dark: #F8FAFC;
    --gray: #CBD5E1;
    
    --card-bg: #1E293B;
    --section-bg: #0F172A;
    --text-main: #F8FAFC;
    --text-muted: #94A3B8;
    --border-color: #334155;
    
    --badge-green-bg: rgba(34, 197, 94, 0.2);
    --badge-blue-bg: rgba(59, 130, 246, 0.2);
    --badge-yellow-bg: rgba(245, 158, 11, 0.2);
}
"@
$content = $content -replace '\[data-theme="dark"\]\s*\{([\s\S]*?)--gray: #CBD5E1;\s*\}', $darkVars

$content = $content -replace '(?i)background(-color)?:\s*(white|#fff|#ffffff)( *!important)? *;', 'background$1: var(--card-bg)$3;'
$content = $content -replace '(?i)background(-color)?:\s*#f8fafc( *!important)? *;', 'background$1: var(--section-bg)$2;'
$content = $content -replace '(?i)background(-color)?:\s*#e2e8f0( *!important)? *;', 'background$1: var(--border-color)$2;'
$content = $content -replace '(?i)color:\s*#0f172a( *!important)? *;', 'color: var(--text-main)$1;'
$content = $content -replace '(?i)color:\s*(#64748b|#475569|#374151)( *!important)? *;', 'color: var(--text-muted)$2;'
$content = $content -replace '(?i)background(-color)?:\s*#dcfce7( *!important)? *;', 'background$1: var(--badge-green-bg)$2;'
$content = $content -replace '(?i)background(-color)?:\s*(#dbeafe|#eff6ff)( *!important)? *;', 'background$1: var(--badge-blue-bg)$3;'
$content = $content -replace '(?i)background(-color)?:\s*(#fef3c7|#fffbeb)( *!important)? *;', 'background$1: var(--badge-yellow-bg)$3;'
$content = $content -replace '(?i)border-color:\s*#e2e8f0( *!important)? *;', 'border-color: var(--border-color)$1;'
$content = $content -replace '(?i)border:\s*1px solid #e2e8f0( *!important)? *;', 'border: 1px solid var(--border-color)$1;'

Set-Content -Path $filePath -Value $content -Encoding UTF8
