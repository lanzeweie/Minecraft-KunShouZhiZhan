@echo off
chcp 65001 >nul

REM 设置压缩包文件名
set zipname=KunShouZhiZhan.zip

REM 删除旧的压缩包
if exist %zipname% del %zipname%

REM 使用 Windows 的 tar 命令创建标准的 zip 包
tar -a -c -f %zipname% pack.mcmeta data

echo ✔ 压缩完成：%zipname%
pause
