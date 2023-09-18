echo Modules to build: ['qtquick3d', 'qthttpserver', 'qtwebchannel', 'qttranslations', 'qtlocation']

echo Preparing: qtquick3d
CD %FULL_SOURCE_DIRECTORY%\qtquick3d
MKDIR out && CD out
call qt-configure-module.bat ..
cmake --build . --parallel
cmake --install .
CD %FULL_SOURCE_DIRECTORY%
RMDIR /S /Q qtquick3d

echo Preparing: qthttpserver
CD %FULL_SOURCE_DIRECTORY%\qthttpserver
MKDIR out && CD out
call qt-configure-module.bat ..
cmake --build . --parallel
cmake --install .
CD %FULL_SOURCE_DIRECTORY%
RMDIR /S /Q qthttpserver

echo Preparing: qtwebchannel
CD %FULL_SOURCE_DIRECTORY%\qtwebchannel
MKDIR out && CD out
call qt-configure-module.bat ..
cmake --build . --parallel
cmake --install .
CD %FULL_SOURCE_DIRECTORY%
RMDIR /S /Q qtwebchannel

echo Preparing: qttranslations
CD %FULL_SOURCE_DIRECTORY%\qttranslations
MKDIR out && CD out
call qt-configure-module.bat ..
cmake --build . --parallel
cmake --install .
CD %FULL_SOURCE_DIRECTORY%
RMDIR /S /Q qttranslations

echo Preparing: qtlocation
CD %FULL_SOURCE_DIRECTORY%\qtlocation
MKDIR out && CD out
call qt-configure-module.bat ..
cmake --build . --parallel
cmake --install .
CD %FULL_SOURCE_DIRECTORY%
RMDIR /S /Q qtlocation