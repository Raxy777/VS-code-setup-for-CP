@echo off
setlocal

REM Get the directory of the script
set SCRIPT_DIR=%~dp0

REM Get the base name of the file to run
set BASE_NAME=%1

echo Running %BASE_NAME%...

REM Change to the directory where the script is located
cd /d %SCRIPT_DIR%

REM Run the executable with input redirection and output redirection
"%BASE_NAME%.exe" < input.txt > output.txt

REM Convert output.txt and expected.txt to UTF-8 with Unix line endings
powershell -Command "& {Get-Content output.txt | Set-Content -Encoding UTF8 -NoNewline output_temp.txt}"
powershell -Command "& {Get-Content expected.txt | Set-Content -Encoding UTF8 -NoNewline expected_temp.txt}"

REM Compare output_temp.txt with expected_temp.txt
fc output_temp.txt expected_temp.txt > nul
if errorlevel 1 (
    echo Failed: Wrong Answer.
) else (
    echo Matched: Output Matches.
)

REM Cleanup temporary files
del output_temp.txt
del expected_temp.txt

REM Cleanup the executable
del "%BASE_NAME%.exe"

echo Done.
exit
