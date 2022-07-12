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
echo 1 - Run TXID and MultiConverter
echo 2 - Convert PNG to BLP
echo 3 - Run SQL queries and Headless Exporter
echo 4 - Move the converted files to a mpq patch
echo 5 - Run steps 1-4
echo 6 - Remove exported files from wow.export folder
echo 7 - Clear cache
echo 8 - EXIT
echo.

set /p m=Type 1, 2, 3, 4, 5, 6, 7 or 8 then press ENTER:
if %m%==1 goto multiconverter
if %m%==2 goto png_to_blp
if %m%==3 goto sql_queries
if %m%==4 goto move_files
if %m%==5 goto all
if %m%==6 goto wow_export
if %m%==7 goto cache
if %m%==8 goto eof

:all
goto multiconverter_all
goto png_to_blp_all
goto sql_queries_all
goto move_files_all
goto cache_all

:multiconverter_all
cls
cd %default_path%
echo Moving files from wow.export to multiconverter
echo.
xcopy /s /y /q "wow.export\*.m2" "Converting Tools\MultiConverter\"
xcopy /s /y /q "wow.export\*.skin" "Converting Tools\MultiConverter\"
echo.
cd "Converting Tools\MultiConverter\" &  for /r %%i in (*.m2) do FixTXID.exe "%%i"
echo.
for /r %%a in (*.m2) do echo enter | "MultiConverter_Console.exe" "%%a"
echo.
echo Moving files back from multiconverter to wow.export
cd %default_path% & echo.
xcopy /s /e /y /q "Converting Tools\MultiConverter\*.m2" "wow.export\"
xcopy /s /e /y /q "Converting Tools\MultiConverter\*.skin" "wow.export\"
echo.

:png_to_blp_all
echo Moving files for conversion:
echo.
cd %default_path% 
if exist "wow.export\interface\icons\*.png" (
    xcopy /s /y /q "wow.export\*.png" "Converting Tools\BLP Converter\"
) else (
    echo .png files not present, moving on...
)
echo.
echo Running png to blp converter...
echo.
if exist "Converting Tools\BLP Converter\interface\icons\*.png" (
    cd "Converting Tools\BLP Converter\" & for /r %%i in (*.png) do BLPConverter.exe "%%i" & echo.
) else (
    echo .png files not present, moving on...
)
Echo Removing old files...
cd %default_path% & echo.
if exist "wow.export\interface\icons\*.png" (
    cd "wow.export" & del /s *.png
) else (
    echo .png files not present, moving on...
)
echo.
echo Moving converted files back to export folder...
cd %default_path% & echo.
if exist "Converting Tools\BLP Converter\interface\icons\*.blp" (
    cd %default_path% & xcopy /s /y /q "Converting Tools\BLP Converter\*.blp" "wow.export"
) else (
    echo .blp files are not present, moving on...
)
echo.

:sql_queries_all
cd %default_path% & cd "SQL\"
echo Running sql scripts...
echo.
mysql --login-path=local < items.sql acore_world_pvp && echo item_template - Command successfully executed
mysql --login-path=local < item-dbc.sql dbc && echo item.dbc - Command successfully executed
mysql --login-path=local < itemdisplayinfo-dbc.sql dbc && echo itemdisplayinfo.dbc - Command successfully executed
echo.
echo Running Headless Exporter...
echo.
cd %default_path% & cd "Converting Tools\Spell Editor\" & start /b /wait "" "HeadlessExport.exe"
echo.

:move_files_all
cd %default_path% & echo Moving .dbc files from WoW Spell Editor Export to patch-4.mpq in the wow folder
xcopy /s /y /q "Converting Tools\Spell Editor\Export\*.dbc" "E:\World of Warcraft 3.3.5a\Data\patch-4.mpq\DBFilesClient"
echo.
echo Moving .m2 files from wow.export to patch-4.mpq in the wow folder
xcopy /s /e /y /q "wow.export\*.m2" "E:\World of Warcraft 3.3.5a\Data\patch-4.mpq\"
echo.
echo Moving .blp files from wow.export to patch-4.mpq in the wow folder
xcopy /s /e /y /q "wow.export\*.blp" "E:\World of Warcraft 3.3.5a\Data\patch-4.mpq\"
echo.
echo Moving .skin files from wow.export to patch-4.mpq in the wow folder
xcopy /s /e /y /q "wow.export\*.skin" "E:\World of Warcraft 3.3.5a\Data\patch-4.mpq\"
echo.

:cache_all
cls
if exist "E:\World of Warcraft 3.3.5a\Cache\" (
    rmdir /s /q "E:\World of Warcraft 3.3.5a\Cache"
) else (
    echo Cache not present.
)
pause>nul|set/p = Steps 1-4 + cache finished! Press any key to return to the menu...
goto main

:multiconverter
cls
cd %default_path%
echo Moving files from wow.export to multiconverter
echo.
xcopy /s /y /q "wow.export\*.m2" "Converting Tools\MultiConverter\"
xcopy /s /y /q "wow.export\*.skin" "Converting Tools\MultiConverter\"
echo.
cd "Converting Tools\MultiConverter\" &  for /r %%i in (*.m2) do FixTXID.exe "%%i"
echo.
for /r %%a in (*.m2) do echo enter | "MultiConverter_Console.exe" "%%a"
echo.
echo Moving files back from multiconverter to wow.export
cd %default_path% & echo.
xcopy /s /e /y /q "Converting Tools\MultiConverter\*.m2" "wow.export\"
xcopy /s /e /y /q "Converting Tools\MultiConverter\*.skin" "wow.export\"
echo.
pause>nul|set/p = MultiConverter finished! Press any key to return to the menu...
goto main

:png_to_blp
cls
echo Moving files for conversion:
echo.
cd %default_path% 
if exist "wow.export\interface\icons\*.png" (
    xcopy /s /y /q "wow.export\*.png" "Converting Tools\BLP Converter\"
) else (
    echo .png files not present, moving on...
)
echo.
echo Running png to blp converter...
echo.
if exist "Converting Tools\BLP Converter\interface\icons\*.png" (
    cd "Converting Tools\BLP Converter\" & for /r %%i in (*.png) do BLPConverter.exe "%%i" & echo.
) else (
    echo .png files not present, moving on...
)
Echo Removing old files...
cd %default_path% & echo.
if exist "wow.export\interface\icons\*.png" (
    cd "wow.export" & del /s *.png
) else (
    echo .png files not present, moving on...
)
echo.
echo Moving converted files back to export folder...
cd %default_path% & echo.
if exist "Converting Tools\BLP Converter\interface\icons\*.blp" (
    cd %default_path% & xcopy /s /y /q "Converting Tools\BLP Converter\*.blp" "wow.export"
) else (
    echo .blp files are not present, moving on...
)
echo.
pause>nul|set/p = BLPConverter finished! Press any key to return to the menu...
goto main

:sql_queries
cls
cd %default_path% & cd "SQL\"
echo Running sql scripts...
echo.
mysql --login-path=local < items.sql acore_world_pvp && echo item_template - Command successfully executed
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
cd %default_path% & echo Moving .dbc files from WoW Spell Editor Export to patch-4.mpq in the wow folder
xcopy /s /y /q "Converting Tools\Spell Editor\Export\*.dbc" "E:\World of Warcraft 3.3.5a\Data\patch-4.mpq\DBFilesClient"
echo.
echo Moving .m2 files from wow.export to patch-4.mpq in the wow folder
xcopy /s /e /y /q "wow.export\*.m2" "E:\World of Warcraft 3.3.5a\Data\patch-4.mpq\"
echo.
echo Moving .blp files from wow.export to patch-4.mpq in the wow folder
xcopy /s /e /y /q "wow.export\*.blp" "E:\World of Warcraft 3.3.5a\Data\patch-4.mpq\"
echo.
echo Moving .skin files from wow.export to patch-4.mpq in the wow folder
xcopy /s /e /y /q "wow.export\*.skin" "E:\World of Warcraft 3.3.5a\Data\patch-4.mpq\"
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

:wow_export
cls
cd %default_path% & cd "wow.export\"
echo Removing all files...
echo.
del /s *.blp
del /s *.png
del /s *.m2,
del /s *.skin
echo.
pause>nul|set/p = All files deleted! Press any key to return to the menu...
goto main