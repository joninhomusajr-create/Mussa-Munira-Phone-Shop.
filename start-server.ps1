# ============================================
# Mussa & Munira Phone Shop - Local Server
# ============================================
# PowerShell script to start local web server

Write-Host "`n============================================" -ForegroundColor Cyan
Write-Host "Mussa & Munira Phone Shop - Local Server" -ForegroundColor Cyan
Write-Host "============================================`n" -ForegroundColor Cyan

$websiteFolder = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $websiteFolder

Write-Host "Website folder: $websiteFolder" -ForegroundColor Green
Write-Host "Checking for web server options..." -ForegroundColor Yellow

# Option 1: Check for Python
try {
    $pythonCheck = & python --version 2>&1
    $pythonExists = $?
    if ($pythonExists) {
        Write-Host "`n✓ Python found: $pythonCheck" -ForegroundColor Green
        Write-Host "`nStarting HTTP server on port 8000..." -ForegroundColor Cyan
        Write-Host "Open your browser: http://localhost:8000`n" -ForegroundColor Green
        & python -m http.server 8000
        exit
    }
} catch {}

# Option 2: Check for Node.js/npx
try {
    $nodeCheck = & node --version 2>&1
    if ($?) {
        Write-Host "`n✓ Node.js found: $nodeCheck" -ForegroundColor Green
        Write-Host "Installing serve globally (one-time)..." -ForegroundColor Yellow
        npm install -g serve
        Write-Host "`nStarting server on port 3000..." -ForegroundColor Cyan
        Write-Host "Open your browser: http://localhost:3000`n" -ForegroundColor Green
        serve -l 3000
        exit
    }
} catch {}

# Option 3: Manual setup instructions
Write-Host "`n" -ForegroundColor Red
Write-Host "╔════════════════════════════════════════════════════╗" -ForegroundColor Red
Write-Host "║  NO WEB SERVER FOUND                               ║" -ForegroundColor Red
Write-Host "╚════════════════════════════════════════════════════╝" -ForegroundColor Red

Write-Host "`nPlease install one of these options:" -ForegroundColor Yellow

Write-Host "`n1. PYTHON (Easiest):" -ForegroundColor Cyan
Write-Host "   Download: https://www.python.org/downloads/" -ForegroundColor White
Write-Host "   • Make sure to check 'Add Python to PATH' during installation" -ForegroundColor White
Write-Host "   • Then restart this script" -ForegroundColor White

Write-Host "`n2. NODE.JS:" -ForegroundColor Cyan
Write-Host "   Download: https://nodejs.org/" -ForegroundColor White
Write-Host "   • Then run: npm install -g serve" -ForegroundColor White

Write-Host "`n3. VS CODE LIVE SERVER:" -ForegroundColor Cyan
Write-Host "   • Open folder in VS Code" -ForegroundColor White
Write-Host "   • Install 'Live Server' extension" -ForegroundColor White
Write-Host "   • Right-click index.html > 'Open with Live Server'" -ForegroundColor White

Write-Host "`n4. WINDOWS BUILT-IN (IIS):" -ForegroundColor Cyan
Write-Host "   • Control Panel > Programs > Turn Windows features on/off" -ForegroundColor White
Write-Host "   • Enable IIS (Internet Information Services)" -ForegroundColor White
Write-Host "   • Copy website files to C:\inetpub\wwwroot\" -ForegroundColor White

Read-Host "`nPress Enter to exit"
