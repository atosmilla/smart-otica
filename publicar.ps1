# Envia as mudanças para o GitHub. O GitHub Pages atualiza sozinho em 1 a 2 minutos:
# https://atosmilla.github.io/smart-otica/
# Uso: powershell -ExecutionPolicy Bypass -File publicar.ps1
Set-Location $PSScriptRoot
git add -A
git diff --cached --quiet
if ($LASTEXITCODE -ne 0) { git commit -m "atualizacao $(Get-Date -Format 'yyyy-MM-dd HH:mm')" | Out-Null }
git push origin main
if ($LASTEXITCODE -ne 0) { throw 'Falha ao enviar para o GitHub' }
Write-Host 'PUBLICADO (1 a 2 minutos para atualizar): https://atosmilla.github.io/smart-otica/'
