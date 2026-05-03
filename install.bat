@echo off
cd /d "%userprofile%\Music"

:: Ici, on pose la question. Quand tu lanceras le script, 
:: il s'arrêtera et tu devras coller ton lien YouTube.
set /p "url=Colle ton lien YouTube ici et appuie sur Entree : "

echo.
echo Tentative de telechargement de : "%url%"
echo.

:: Execution du téléchargement
yt-dlp -x --audio-format mp3 --audio-quality 0 --yes-playlist -o "%%(title)s.%%(ext)s" "%url%"

echo.
echo Operation terminee ! Verifiez votre dossier Musique.
pause