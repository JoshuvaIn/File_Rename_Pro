@echo off
REM ===========================================================================
REM  Build FileRenamerPro_Portable.exe (single-file, no console window).
REM  Requirements: Python + pip install pyinstaller customtkinter
REM  Or use: pip install -r requirements.txt
REM  Output:   dist\FileRenamerPro_Portable.exe
REM ===========================================================================

echo Building FileRenamerPro_Portable.exe ...
python -m PyInstaller --onefile --windowed ^
    --name FileRenamerPro_Portable ^
    --collect-all customtkinter ^
    --noconfirm ^
    app.py

echo.
echo Done. The portable exe is in the "dist" folder.
pause
