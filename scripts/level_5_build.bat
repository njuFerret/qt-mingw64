echo Modules to build: ['qtwebengine', 'qtquick3dphysics', 'qtmultimedia', 'qtquickeffectmaker']

echo Preparing: qtwebengine
CD %FULL_SOURCE_DIRECTORY%\qtwebengine
MKDIR out && CD out
call qt-configure-module.bat ..
cmake --build . --parallel
cmake --install .
CD %FULL_SOURCE_DIRECTORY%
RMDIR /S /Q qtwebengine

echo Preparing: qtquick3dphysics
CD %FULL_SOURCE_DIRECTORY%\qtquick3dphysics
MKDIR out && CD out
call qt-configure-module.bat ..
cmake --build . --parallel
cmake --install .
CD %FULL_SOURCE_DIRECTORY%
RMDIR /S /Q qtquick3dphysics

echo Preparing: qtmultimedia
CD %FULL_SOURCE_DIRECTORY%\qtmultimedia
MKDIR out && CD out
call qt-configure-module.bat ..
cmake --build . --parallel
cmake --install .
CD %FULL_SOURCE_DIRECTORY%
RMDIR /S /Q qtmultimedia

echo Preparing: qtquickeffectmaker
CD %FULL_SOURCE_DIRECTORY%\qtquickeffectmaker
MKDIR out && CD out
call qt-configure-module.bat ..
cmake --build . --parallel
cmake --install .
CD %FULL_SOURCE_DIRECTORY%
RMDIR /S /Q qtquickeffectmaker