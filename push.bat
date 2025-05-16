:: Přidání všech změn
git add .

:: Získání aktuálního data ve formátu RRRR-MM-DD
for /f "tokens=1-3 delims=." %%a in ("%date%") do (
    set CURRENT_DATE=%%c-%%b-%%a
)

:: Commit s aktuálním datem
git commit -m "Aktualizace %CURRENT_DATE%"

:: Push na vzdálený repozitář (branch main)
git push origin main
