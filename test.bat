set BUILD_MODE=%1


@REM 2024.10.14，已安装 python 3.9.13， MinGW 12.2.0
@REM echo 环境变量：%PATH%
echo 当前路径：%CD%

cd \
mkdir src 
echo 当前路径：%CD%

@REM 下载7zr用于解压7z安装包
curl -L -o 7zr.exe https://www.7-zip.org/a/7zr.exe
curl -L -o 7zip.exe https://www.7-zip.org/a/7z2408-x64.exe
@REM 下载cmake、ninja、qt、perl和MinGW
curl -L -o cmake.zip https://github.com/Kitware/CMake/releases/download/v%_cmake_ver%/cmake-%_cmake_ver%-windows-x86_64.zip
curl -L -o ninja-win.zip https://github.com/ninja-build/ninja/releases/download/v1.12.1/ninja-win.zip
curl -L -o "%_pkgfn%.tar.xz" "https://download.qt.io/official_releases/qt/%_qt_major_ver%/%_qtver%/single/%_pkgfn%.tar.xz"
curl -L -o openssl-3.tar.gz "https://github.com/openssl/openssl/releases/download/openssl-3.3.2/openssl-3.3.2.tar.gz"
curl -L -o strawberry-perl.zip https://github.com/StrawberryPerl/Perl-Dist-Strawberry/releases/download/SP_54001_64bit_UCRT/strawberry-perl-5.40.0.1-64bit-portable.zip
curl -L -o MingW.7z https://github.com/niXman/mingw-builds-binaries/releases/download/14.2.0-rt_v12-rev0/x86_64-14.2.0-release-posix-seh-ucrt-rt_v12-rev0.7z


@REM cd \
@REM mkdir Dev
@REM cd Dev
@REM echo 当前路径：%CD%

@REM python -V
@REM g++ -v

@REM cmake解压后根目录为文件名, 类似 cmake-3.30.5-windows-x86_64
@REM ninja-win为单文件, 需要创建文件夹, 这里创建ninja文件夹
@REM MinGW解压后根目录为 mingw64 



7zr x 7zip.exe -o7zip
@REM 设置7z环境变量
cd 7zip
set PATH=%CD%;%PATH%
cd.. 
7z x cmake.zip
cd cmake-%_cmake_ver%-windows-x86_64\bin
set PATH=%CD%;%PATH%
cd ..\..

7z x ninja-win.zip -oninja
set PATH=%CD%ninja;%PATH%
7z x MingW.7z
set PATH=%CD%mingw64\bin;%PATH%
7z x openssl-3.tar.gz

echo %PATH%

@REM 测试各个工具
cmake --version
ninja --version
g++ --version



