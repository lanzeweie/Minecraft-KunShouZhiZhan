@echo off
chcp 65001 >nul
set zipname=困兽之战.zip
powershell -command "Get-ChildItem -Exclude 'build.bat', '.history' | Compress-Archive -DestinationPath '%zipname%' -Force"
echo 压缩完成，文件已保存为 %zipname%
pause
