
# Retroporting Tools

The following is a collection of tools and a python script to quickly retroport assets from Cataclysm+ to WotLK


## Requirements
[WoW 3.3.5a Client](https://wowdl.net/client/3.3.5a-win-us)\
[MySQL Database](https://dev.mysql.com/downloads/mysql/)\
[UNIX commands for windows](https://github.com/George-Ogden/UNIX)\
[Chocolatey](https://chocolatey.org/install)\
[Python3](https://www.python.org/downloads/)
```
choco install make
```
## Setup

```python
pip install -r requirements.text
```
```MySQL
mysql_config_editor set --login-path=local --host=localhost --user=acore --password
```
Move `Wow_allow_mpq_edits.exe` from the root directory to your World of Warcraft install root directory.
Open `wow.export.exe`in `Converting Tools\WoW.Export` - click on the cog in the top right and change the `Export directory` to `wow.export` in the root directory:
![](https://github.com/fischerlol/retroporting/blob/main/Image/wow.export.png "wow.export")

## Config

Configure `the config.py` file in the root directory:
```python
# default paths
default_path = "C:/Users/Fischer/Documents/GitHub"
wow_default_path = "E:/World of Warcraft 3.3.5a"
```
## Run
Open `Retroporting.bat` in the root directory or:
```python
python script/main.py
```
## Usage
![](https://github.com/fischerlol/retroporting/blob/main/Image/Retroporting.png "Retroporting")\
I. Initial Setup:
* Clones the latest [patch repo](https://github.com/fischerlol/patch/tree/retroporting) or updates if already cloned.
* Copies the contents of patch repo to the patch directory in the root directory.
* Runs the makefile to create dbc database and initial data.
* Unzips the tools.
W. Launch WoW.Export:
* Launches WoW Export tool which allows you to extract assets from a local World of Warcraft install or blizzard CDN
1. Run MultiConverter:
* Copies the extracted files from WoW Export to `Converting Tools/MultiConverter/wow.export` and runs `FixTXID`/`MultiConverter` on each file.
2. Run Helmet Fix:
* Will run the above process on manually downloaded helmet files (that have been placed in the `wow.export.helmet` directory) from [wow.tools](https://wow.tools/files/) to avoid a helmet particle offset issue with certain helmets.
3. Run SQL queries and Headless Exporter:
* (The below `.sql` files will require editing to create your own items once you have ported the assets - not required for maps)
* Executes `item-dbc.sql` which is reponsible for adding custom items to `item.dbc`.
* Executes `itemdisplayinfo-dbc.sql` which is responsible for adding display id's to `itemdisplayinfo.dbc` for `item.dbc`.
* Executes `items.sql` which is responsible for creating the items in `acore_world` database.
* Runs Headless Exporter which exports the imported data from the previosuly imported data to `.dbc` files.
4. Move converted files to MPQ patch
* Moves converted assets from `Converting Tools/MultiConverter/wow.export` to the World of Warcraft patch folder.
* Moves the exported `.dbc` files from `Converting Tools/Spell Editor/Export` to the World of Warcraft patch folder.
5. Clear working directories
* Deletes all files in `wow.export`, `wow.export.other` and `Converting Tools/MultiConverter/wow.export` (Only run this when you have already converted your assets and moved them to the patch).
6. Clear cache and launch wow:
* Deletes the `cache` in the World of Warcraft directory and opens `Wow_allow_mpq_edits.exe` which is a modded WoW 3.3.5a exe that allows you to use folder patches.
7. Clear cache:
* Deletes the `cache` in the World of Warcraft directory.