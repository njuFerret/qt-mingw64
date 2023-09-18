echo Modules to build: ['qtwebengine', 'qtquick3dphysics', 'qtmultimedia', 'qtquickeffectmaker']

echo Not preparing: qtwebengine, Reason: Chromium build not supported using Mingw
REM CD %FULL_SOURCE_DIRECTORY%\qtwebengine
REM MKDIR out && CD out
REM call qt-configure-module.bat ..
REM cmake --build . --parallel
REM cmake --install .
REM CD %FULL_SOURCE_DIRECTORY%
REM RMDIR /S /Q qtwebengine

echo Preparing: qtquick3dphysics
CD %FULL_SOURCE_DIRECTORY%\qtquick3dphysics
MKDIR out && CD out
call qt-configure-module.bat ..
cmake --build . --parallel
cmake --install .
CD %FULL_SOURCE_DIRECTORY%
RMDIR /S /Q qtquick3dphysics

echo Preparing: qtmultimedia
CD %BUILD_START_DIR%
curl -L -o ffmpeg-6.0-full_build-shared.7z https://github.com/FetheredSerpent/qt-mingw64/releases/download/dependencies/ffmpeg-6.0-full_build-shared.7z
echo Extracting ffmpeg
7zr x ffmpeg-6.0-full_build-shared.7z
DEL ffmpeg-6.0-full_build-shared.7z
CD %FULL_SOURCE_DIRECTORY%\qtmultimedia
MKDIR out && CD out
call qt-configure-module.bat ..
cmake --build . --parallel
cmake --install .
CD %FULL_SOURCE_DIRECTORY%
RMDIR /S /Q qtmultimedia
RMDIR /S /Q %BUILD_START_DIR%\ffmpeg-6.0-full_build-shared

echo Preparing: qtquickeffectmaker
CD %FULL_SOURCE_DIRECTORY%\qtquickeffectmaker
MKDIR out && CD out
call qt-configure-module.bat ..
cmake --build . --parallel
cmake --install .
CD %FULL_SOURCE_DIRECTORY%
RMDIR /S /Q qtquickeffectmaker
