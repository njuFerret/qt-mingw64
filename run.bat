set BUILD_START_DIR=%CD%
set RELEASE_BUILD_DIR=%BUILD_START_DIR%\qt_release_mingw64

curl -L -o 7zr.exe https://github.com/FetheredSerpent/qt-mingw64/releases/download/dependencies/7zr.exe
curl -L -o cmake-3.27.4-windows-x86_64.zip https://github.com/FetheredSerpent/qt-mingw64/releases/download/dependencies/cmake-3.27.4-windows-x86_64.zip
curl -L -o MinGW-w64-x86_64-11.2.0-release-posix-seh-rt_v9-rev1.7z https://github.com/FetheredSerpent/qt-mingw64/releases/download/dependencies/MinGW-w64-x86_64-11.2.0-release-posix-seh-rt_v9-rev1.7z
curl -L -o ninja-win.zip https://github.com/FetheredSerpent/qt-mingw64/releases/download/dependencies/ninja-win.zip
curl -L -o openssl-mingw-bin.tar.gz https://github.com/FetheredSerpent/qt-mingw64/releases/download/dependencies/openssl-mingw-bin.tar.gz
curl -L -o qt-everywhere-src-6.5.2.tar.xz https://github.com/FetheredSerpent/qt-mingw64/releases/download/dependencies/qt-everywhere-src-6.5.2.tar.xz
curl -L -o strawberry-perl-5.32.1.1-64bit.zip https://github.com/FetheredSerpent/qt-mingw64/releases/download/dependencies/strawberry-perl-5.32.1.1-64bit.zip
curl -L -o 7z2301-extra.7z https://github.com/FetheredSerpent/qt-mingw64/releases/download/dependencies/7z2301-extra.7z

MKDIR strawberry
MKDIR ninja

echo Extracting cmake
tar -xf cmake-3.27.4-windows-x86_64.zip
echo Extracting Mingw
7zr x MinGW-w64-x86_64-11.2.0-release-posix-seh-rt_v9-rev1.7z -y
echo Extracting ninja
tar -xf ninja-win.zip -C ninja
echo Extracting openssl
tar -xzf openssl-mingw-bin.tar.gz
echo Extracting perl
tar -xf strawberry-perl-5.32.1.1-64bit.zip -C strawberry
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
DEL qt-everywhere-src-6.5.2.tar

SET CMAKE_PREFIX_PATH=%CD%\ffmpeg-6.0-full_build-shared;%RELEASE_BUILD_DIR%
SET OPENSSL_ROOT_DIR=%CD%\openssl-mingw-bin
SET LLVM_INSTALL_DIR=%CD%\libclang
SET PATH=%CD%\ninja;%CD%\mingw64\bin;%CD%\cmake-3.27.4-windows-x86_64\bin;%CD%\strawberry\perl\bin;%RELEASE_BUILD_DIR%\bin;%CD%\qt-everywhere-src-6.5.2;%PATH%

echo Starting build
set FULL_SOURCE_DIRECTORY=%CD%\qt-everywhere-src-6.5.2
call %BUILD_START_DIR%\scripts\build.bat
call %BUILD_START_DIR%\scripts\build_docs.bat

CD %BUILD_START_DIR%
tar -czf qt_release_mingw64.tar.gz qt_release_mingw64
