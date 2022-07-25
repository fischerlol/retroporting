@echo off
cls

set default_path=%cd%

:main
cls
echo.
echo ............................................................
echo PRESS 1, 2, 3, 4, 5, 6, 7 to select your task, or 8 to EXIT.
echo ............................................................
echo.
echo 1 - Run TXID and MultiConverter (Console)
echo 2 - Run MultiConverter (Helmet Particles)
echo 3 - Run SQL queries and Headless Exporter
echo 4 - Move the converted files to a mpq patch
echo 5 - Remove exported files from both wow.export folder(s)
echo 6 - Clear cache/launch wow
echo 7 - Clear cache
echo 8 - EXIT
echo.

set /p m=Type 1, 2, 3, 4, 5, 6, 7 or 8 then press ENTER:
if %m%==1 goto multiconverter
if %m%==2 goto multiconverter_other
if %m%==3 goto sql_queries
if %m%==4 goto move_files
if %m%==5 goto wow_export
if %m%==6 goto cache_wow
if %m%==7 goto cache
if %m%==8 goto eof
goto main

:multiconverter
cls
cd %default_path% & cd "Converting Tools\MultiConverter\"
echo.
echo Deleting old files...
echo.
del /s *.blp
del /s *.png
del /s *.m2
del /s *.skin
cd %default_path%
echo.
echo Moving files from wow.export to multiconverter
echo.
xcopy /s /y /q "wow.export\*.m2" "Converting Tools\MultiConverter\"
xcopy /s /y /q "wow.export\*.skin" "Converting Tools\MultiConverter\"
echo.
cd "Converting Tools\MultiConverter\" &  for /r %%i in (*.m2) do FixTXID.exe "%%i"
echo.
for /r %%a in (*.m2) do echo enter | "MultiConverter_Console.exe" "%%a" -fixhelm
echo.
echo Moving files back from multiconverter to wow.export
cd %default_path% & echo.
xcopy /s /e /y /q "Converting Tools\MultiConverter\*.m2" "wow.export\"
xcopy /s /e /y /q "Converting Tools\MultiConverter\*.skin" "wow.export\"
echo.
pause>nul|set/p = MultiConverter finished! Press any key to return to the menu...
goto main

:multiconverter_other
cls
cd %default_path% & cd "Converting Tools\MultiConverter\"
echo.
echo Deleting old files...
echo.
del /s *.blp
del /s *.png
del /s *.m2
del /s *.skin
cd %default_path%
echo.
echo Moving files from wow.export.other to multiconverter
echo.
xcopy /s /y /q "wow.export.other\*.m2" "Converting Tools\MultiConverter\"
xcopy /s /y /q "wow.export.other\*.skin" "Converting Tools\MultiConverter\"
echo.
cd "Converting Tools\MultiConverter\" & for /r %%a in (*.m2) do echo enter | "MultiConverter_Console.exe" "%%a"
echo.
echo Moving files back from multiconverter to wow.export.other
cd %default_path% & echo.
xcopy /s /e /y /q "Converting Tools\MultiConverter\*.m2" "wow.export.other\"
xcopy /s /e /y /q "Converting Tools\MultiConverter\*.skin" "wow.export.other\"
echo.
pause>nul|set/p = MultiConverter finished! Press any key to return to the menu...
goto main

:sql_queries
cls
cd %default_path% & cd "SQL\"
echo Running sql scripts...
echo.
mysql --login-path=local < items.sql acore_world_wobgob && echo item_template - Command successfully executed
mysql --login-path=local < item-dbc.sql dbc && echo item.dbc - Command successfully executed
mysql --login-path=local < itemdisplayinfo-dbc.sql dbc && echo itemdisplayinfo.dbc - Command successfully executed
echo.
echo Running Headless Exporter...
echo.
cd %default_path% & cd "Converting Tools\Spell Editor\" & start /b /wait "" "HeadlessExport.exe"
echo.
pause>nul|set/p = SQL scripts and headless exporter finished! Press any key to return to the menu...
goto main

:move_files
cls
cd %default_path% & echo Moving converted files from export folder(s) to wow patch:
echo.
echo Item.dbc:
xcopy /s /y /q "Converting Tools\Spell Editor\Export\item.dbc" "E:\World of Warcraft 3.3.5a\Data\patch-4.mpq\DBFilesClient"
echo.
echo ItemDisplayInfo.dbc:
xcopy /s /y /q "Converting Tools\Spell Editor\Export\itemdisplayinfo.dbc" "E:\World of Warcraft 3.3.5a\Data\patch-4.mpq\DBFilesClient"
echo.
echo Moving .m2 files (wow.export)
xcopy /s /e /y /q "wow.export\*.m2" "E:\World of Warcraft 3.3.5a\Data\patch-4.mpq\"
echo.
echo Moving .blp files (wow.export)
xcopy /s /e /y /q "wow.export\*.blp" "E:\World of Warcraft 3.3.5a\Data\patch-4.mpq\"
echo.
echo Moving .skin files (wow.export)
xcopy /s /e /y /q "wow.export\*.skin" "E:\World of Warcraft 3.3.5a\Data\patch-4.mpq\"
echo.
echo Moving .m2 files (wow.export.other)
xcopy /s /e /y /q "wow.export.other\*.m2" "E:\World of Warcraft 3.3.5a\Data\patch-4.mpq\"
echo.
echo Moving .skin files (wow.export.other)
xcopy /s /e /y /q "wow.export.other\*.skin" "E:\World of Warcraft 3.3.5a\Data\patch-4.mpq\"
echo.
pause>nul|set/p = Files moved! Press any key to return to the menu...
goto main

:cache
cls
if exist "E:\World of Warcraft 3.3.5a\Cache\" (
    rmdir /s /q "E:\World of Warcraft 3.3.5a\Cache"
) else (
    echo Cache not present.
)
pause>nul|set/p = Cache deleted! Press any key to return to the menu...
goto main

:cache_wow
cls
if exist "E:\World of Warcraft 3.3.5a\Cache\" (
    rmdir /s /q "E:\World of Warcraft 3.3.5a\Cache"
) else (
    echo Cache not present.
)
echo.
echo Starting wow...
start "" "E:\World of Warcraft 3.3.5a\wow_allow_mpq_edits.exe"
pause>nul|set/p = Cache deleted! Press any key to return to the menu...
goto main

:wow_export
cls
echo Removing all files in wow.export...
echo.
cd %default_path% & cd "wow.export\"
del /s *.blp
del /s *.png
del /s *.m2
del /s *.skin
echo.
echo Removing all files in wow.export.other...
echo.
cd %default_path% & cd "wow.export.other\"
del /s *.blp
del /s *.png
del /s *.m2
del /s *.skin
echo.
pause>nul|set/p = All files deleted! Press any key to return to the menu...
goto main

:eof
exit