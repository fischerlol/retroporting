@echo off
cls

echo Moving exported .m2 from wow.export to txid for converting
xcopy /s /y /q "wow.export\*.m2" "Converting Tools\TXID\"
echo.
echo Removing TXID from .m2 files
cd  "Converting Tools\TXID" &  for /r %%i in (*.m2) do FixTXID.exe "%%i"
echo.
echo Moving patched .m2 files back to wow.export folder
xcopy /s /y /q "%CD%\*.m2" "..\..\wow.export\"
echo.
echo TXID removed!
echo.

echo Opening MultiConverter...
cd "..\MultiConverter" & start /b /wait "" "MultiConverter_v0.0.14.exe"
echo. 
echo MultiConverter finished!
echo.

echo Moving .m2 files from wow.export to patch-4.mpq in the wow folder
xcopy /s /e /y /q "..\..\wow.export\*.m2" "E:\World of Warcraft 3.3.5a\Data\patch-4.mpq"
echo.
echo Moving .blp files from wow.export to patch-4.mpq in the wow folder
xcopy /s /e /y /q "..\..\wow.export\*.blp" "E:\World of Warcraft 3.3.5a\Data\patch-4.mpq"
echo.
echo Moving .skin files from wow.export to patch-4.mpq in the wow folder
xcopy /s /e /y /q "..\..\wow.export\*.skin" "E:\World of Warcraft 3.3.5a\Data\patch-4.mpq"
echo.
echo Moving finished!
pause




@REM echo Running sql scripts...
@REM mysql --login-path=local < C:\Users\Fischer\Documents\GitHub\azerothcore-scripts\retroport\items.sql acore_world && echo Command successfully executed - item_template.
@REM mysql --login-path=local < C:\Users\Fischer\Documents\GitHub\azerothcore-scripts\retroport\item-dbc.sql dbc && echo Command successfully executed - item.dbc.
@REM mysql --login-path=local < C:\Users\Fischer\Documents\GitHub\azerothcore-scripts\retroport\itemdisplayinfo-dbc.sql dbc && echo Command successfully executed - itemdisplayinfo.dbc.
@REM echo.

@REM C:
@REM echo Running headless exporter for WoW Spell Editor...
@REM cd "C:\Users\Fischer\Documents\GitHub\Spelleditor - dbc-sql\" & start /b /wait "" "C:\Users\Fischer\Documents\GitHub\Spelleditor - dbc-sql\HeadlessExport.exe"
@REM echo.

@REM if not exist "E:\World of Warcraft 3.3.5a\Data\patch-4.mpq\DBFilesClient" mkdir "E:\World of Warcraft 3.3.5a\Data\patch-4.mpq\DBFilesClient"
@REM xcopy /s /e /y /q "C:\Users\Fischer\wow.export" "E:\World of Warcraft 3.3.5a\Data\patch-4.mpq"
@REM xcopy /y /q "C:\Users\Fischer\Documents\GitHub\Spelleditor - dbc-sql\export\item.dbc" "E:\World of Warcraft 3.3.5a\Data\patch-4.mpq\DBFilesClient"
@REM xcopy /y /q "C:\Users\Fischer\Documents\GitHub\Spelleditor - dbc-sql\export\itemdisplayinfo.dbc" "E:\World of Warcraft 3.3.5a\Data\patch-4.mpq\DBFilesClient"
@REM echo.

@REM if not exist "E:\World of Warcraft 3.3.5a\Cache" echo Cache not present.
@REM if exist "E:\World of Warcraft 3.3.5a\Cache" rmdir /s /q "E:\World of Warcraft 3.3.5a\Cache" && echo Cache deleted.
@REM echo.
@REM pause>nul|set/p = The batch script has finished. Press any key to exit ...