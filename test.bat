set BUILD_MODE=%1



echo 环境变量：%PATH%

echo 当前路径：%CD%


@REM 下载7zr用于解压7z安装包
curl -L -o 7zr.exe https://www.7-zip.org/a/7zr.exe
curl -L -o 7zip.exe https://www.7-zip.org/a/7z2408-x64.exe


7zr x 7zip.exe -o7zip


set PATH=%CD%7zip;%PATH%

7z