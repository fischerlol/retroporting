@echo off
cls

echo Moving exported files from wow.export to txid for converting
xcopy /s /y /q "wow.export\*.m2" "Converting Tools\TXID\"
xcopy /s /y /q "wow.export\*.png" "Converting Tools\BLP Converter\"
echo.

echo Removing TXID from .m2 files
cd  "Converting Tools\TXID" &  for /r %%i in (*.m2) do FixTXID.exe "%%i"
echo.

echo Running png to blp converter...
cd "..\BLP Converter\" & for /r %%i in (*.png) do BLPConverter.exe "%%i"
del "..\BLP Converter\interface\icons\*.png" 
echo.

echo Opening MultiConverter...
cd "..\MultiConverter" & start /b /wait "" "MultiConverter_v0.0.14.exe"
echo. 

echo Moving patched and converted files back to wow.export folder
xcopy /s /y /q "..\TXID\*.m2" "..\..\wow.export\"
xcopy /s /y /q "..\BLP Converter\*.blp" "..\..\wow.export\"
echo.

echo Running sql scripts...
cd "..\..\SQL\"
mysql --login-path=local < items.sql acore_world_pvp && echo Command successfully executed - item_template.
mysql --login-path=local < item-dbc.sql dbc && echo Command successfully executed - item.dbc.
mysql --login-path=local < itemdisplayinfo-dbc.sql dbc && echo Command successfully executed - itemdisplayinfo.dbc.
echo.

echo Running headless exporter for WoW Spell Editor...
cd "..\Converting Tools\Spell Editor\" & start /b /wait "" "HeadlessExport.exe"
echo.

echo Moving .dbc files from WoW Spell Editor Export to patch-4.mpq in the wow folder
xcopy /s /y /q "..\Spell Editor\Export\*.dbc" "E:\World of Warcraft 3.3.5a\Data\patch-4.mpq\DBFilesClient\"
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

if not exist "E:\World of Warcraft 3.3.5a\Cache" echo Cache not present.
if exist "E:\World of Warcraft 3.3.5a\Cache" rmdir /s /q "E:\World of Warcraft 3.3.5a\Cache" && echo Cache deleted.
echo.
pause>nul|set/p = The batch script has finished. Press any key to exit ...