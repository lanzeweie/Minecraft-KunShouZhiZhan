@echo off
chcp 65001 >nul

set zipname=KunShouZhiZhan.zip

if exist %zipname% del %zipname%

tar -a -c -f %zipname% pack.mcmeta data

echo ✔ 数据包打包已完成：%zipname%
echo 按下任意键关闭窗口...
pause >nul
