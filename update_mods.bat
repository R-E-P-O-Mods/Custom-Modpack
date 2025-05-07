@echo off
cd /d "%~dp0"
echo ==== Обновление модов из Git ====
git pull origin master
echo.
echo ==== Завершено. Нажмите любую клавишу ==== 
pause >nul
