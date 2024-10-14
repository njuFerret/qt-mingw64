set BUILD_START_DIR=%CD%
set BUILD_MODE=%1
set BUILD_DIR_NAME=qt_%BUILD_MODE%_mingw64
set BUILD_OUTPUT_DIR=%BUILD_START_DIR%\%BUILD_DIR_NAME%
set BUILD_FLAG=-%BUILD_MODE%



set _qt_major_ver=6.8
set _qt_minor_ver=0
set _qt_ver=%_qt_major_ver%.%_qt_minor_ver%
set _pkgfn=qt-everywhere-src-%_qtver%
set _cmake_ver=3.30.5


@REM curl -L -o 7zr.exe https://github.com/FetheredSerpent/qt-mingw64/releases/download/dependencies/7zr.exe
@REM curl -L -o cmake-3.27.4-windows-x86_64.zip https://github.com/FetheredSerpent/qt-mingw64/releases/download/dependencies/cmake-3.27.4-windows-x86_64.zip
@REM curl -L -o MinGW-w64-x86_64-11.2.0-release-posix-seh-rt_v9-rev1.7z https://github.com/FetheredSerpent/qt-mingw64/releases/download/dependencies/MinGW-w64-x86_64-11.2.0-release-posix-seh-rt_v9-rev1.7z
@REM curl -L -o ninja-win.zip https://github.com/FetheredSerpent/qt-mingw64/releases/download/dependencies/ninja-win.zip
@REM curl -L -o openssl-mingw-bin.tar.gz https://github.com/FetheredSerpent/qt-mingw64/releases/download/dependencies/openssl-mingw-bin.tar.gz
@REM curl -L -o qt-everywhere-src-6.5.2.tar.xz https://github.com/FetheredSerpent/qt-mingw64/releases/download/dependencies/qt-everywhere-src-6.5.2.tar.xz
@REM curl -L -o strawberry-perl-5.32.1.1-64bit.zip https://github.com/FetheredSerpent/qt-mingw64/releases/download/dependencies/strawberry-perl-5.32.1.1-64bit.zip
@REM curl -L -o 7z2301-extra.7z https://github.com/FetheredSerpent/qt-mingw64/releases/download/dependencies/7z2301-extra.7z

@REM 下载7zr用于解压7z安装包
curl -L -o 7zr.exe https://www.7-zip.org/a/7zr.exe
curl -L -o 7zip.exe https://www.7-zip.org/a/7z2408-x64.exe
curl -L -o cmake.zip https://github.com/Kitware/CMake/releases/download/v%_cmake_ver%/cmake-%_cmake_ver%-windows-x86_64.zip
curl -L -o ninja-win.zip https://github.com/ninja-build/ninja/releases/download/v1.12.1/ninja-win.zip
curl -L -o "%_pkgfn%.tar.xz" "https://download.qt.io/official_releases/qt/%_qt_major_ver%/%_qtver%/single/%_pkgfn%.tar.xz"
curl -L -o openssl-3.tar.gz "https://github.com/openssl/openssl/releases/download/openssl-3.3.2/openssl-3.3.2.tar.gz"
curl -L -o strawberry-perl.zip https://github.com/StrawberryPerl/Perl-Dist-Strawberry/releases/download/SP_54001_64bit_UCRT/strawberry-perl-5.40.0.1-64bit-portable.zip
curl -L -o MingW.7z https://github.com/niXman/mingw-builds-binaries/releases/download/14.2.0-rt_v12-rev0/x86_64-14.2.0-release-posix-seh-ucrt-rt_v12-rev0.7z


@REM 解压7zip
7zr x 7zip.exe -o7zip



MKDIR strawberry
MKDIR ninja


echo Extracting cmake
tar -xf cmake.zip --strip-components 1 -C ./cmake
echo Extracting Mingw  
7zr x MingW.7z -y     @REM 默认路径 mingw64
echo Extracting ninja
tar -xf ninja-win.zip -C ninja
echo Extracting openssl
tar -xzf openssl-mingw-bin.tar.gz
echo Extracting perl
tar -xf strawberry-perl.zip -C strawberry
echo Extracting qt
MKDIR 7z
cd 7z
..\7zr x ..\7z2301-extra.7z
cd ..
7zr x qt-everywhere-src-6.5.2.tar.xz -so | 7z\7za x -aoa -si -ttar

echo Clearing archives
RMDIR /S /Q 7z
REM RMDIR /S /Q qt-everywhere-src-6.5.2\qtwebengine
DEL 7z2301-extra.7z
DEL cmake-3.27.4-windows-x86_64.zip
DEL MinGW-w64-x86_64-11.2.0-release-posix-seh-rt_v9-rev1.7z
DEL ninja-win.zip
DEL openssl-mingw-bin.tar.gz
DEL strawberry-perl-5.32.1.1-64bit.zip
DEL qt-everywhere-src-6.5.2.tar.xz
REM DEL qt-everywhere-src-6.5.2.tar

SET CMAKE_PREFIX_PATH=%CD%\ffmpeg-6.0-full_build-shared;%BUILD_OUTPUT_DIR%
SET OPENSSL_ROOT_DIR=%CD%\openssl-mingw-bin
SET LLVM_INSTALL_DIR=%CD%\libclang
SET PATH=%CD%\ninja;%CD%\mingw64\bin;%CD%\cmake-3.27.4-windows-x86_64\bin;%CD%\strawberry\perl\bin;%BUILD_OUTPUT_DIR%\bin;%CD%\qt-everywhere-src-6.5.2;%WINDIR%\system32;%WINDIR%

echo Starting build
set FULL_SOURCE_DIRECTORY=%CD%\qt-everywhere-src-6.5.2

IF NOT DEFINED CI_ANDROID_ABI (
call %BUILD_START_DIR%\scripts\build.bat
) ELSE (
call %BUILD_START_DIR%\scripts\build_android.bat
)

CD %BUILD_START_DIR%
tar -czf %BUILD_DIR_NAME%.tar.gz %BUILD_DIR_NAME%

REM call %BUILD_START_DIR%\scripts\build_docs.bat
