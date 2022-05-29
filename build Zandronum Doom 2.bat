if exist dtemp rmdir /S /Q dtemp
if exist d1temp rmdir /S /Q d1temp
if exist d2temp rmdir /S /Q d2temp

7z a -r -x!.git\ -x!.vscode\ -x!*.gitattributes -x!*.gitignore -x!src\ -x!psd\ -x!resources\ -x!*.bat -x!*.pk3 -x!*.ipk3 -x!*.dbs -x!*.exe -x!*.bak -x!*.backup* -x!*.workspace -x!*.psd -x!*.blend -x!TODO -x!filter\ -ssw -tzip -mx9 .\OldBlood_Zandronum_Doom2.pk3 "*"

xcopy /S /I /Q /Y /F filter\doom dtemp
cd dtemp
7z a -r -ssw -tzip -mx9 ..\OldBlood_Zandronum_Doom2.pk3 "*"
cd ..

REM xcopy /S /I /Q /Y /F filter\doom.doom1 d1temp
REM cd d1temp
REM 7z a -r -ssw -tzip -mx9 ..\OldBlood_Zandronum_Doom2.pk3 "*"
REM cd ..

xcopy /S /I /Q /Y /F filter\doom.doom2 d2temp
cd d2temp
if exist decorate.dec ren decorate.dec decorate.doom2.dec
if exist decaldef.lmp ren decaldef.lmp decaldef.doom2.lmp
if exist terrain.lmp ren terrain.lmp terrain.doom2.lmp
7z a -r -ssw -tzip -mx9 ..\OldBlood_Zandronum_Doom2.pk3 "*"
cd ..

if exist dtemp rmdir /S /Q dtemp
if exist d1temp rmdir /S /Q d1temp
if exist d2temp rmdir /S /Q d2temp
