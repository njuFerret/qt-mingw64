echo Modules to build: ['qtshadertools', 'qtlanguageserver', 'qtimageformats', 'qtserialport', 'qtactiveqt', 'qtcoap', 'qtnetworkauth', 'qtsvg']

echo Preparing: qtshadertools
CD %FULL_SOURCE_DIRECTORY%\qtshadertools
MKDIR out && CD out
call qt-configure-module.bat ..
cmake --build . --parallel
cmake --install .
CD %FULL_SOURCE_DIRECTORY%
RMDIR /S /Q qtshadertools

echo Preparing: qtlanguageserver
CD %FULL_SOURCE_DIRECTORY%\qtlanguageserver
MKDIR out && CD out
call qt-configure-module.bat ..
cmake --build . --parallel
cmake --install .
CD %FULL_SOURCE_DIRECTORY%
RMDIR /S /Q qtlanguageserver

echo Preparing: qtimageformats
CD %FULL_SOURCE_DIRECTORY%\qtimageformats
MKDIR out && CD out
call qt-configure-module.bat ..
cmake --build . --parallel
cmake --install .
CD %FULL_SOURCE_DIRECTORY%
RMDIR /S /Q qtimageformats

echo Preparing: qtserialport
CD %FULL_SOURCE_DIRECTORY%\qtserialport
MKDIR out && CD out
call qt-configure-module.bat ..
cmake --build . --parallel
cmake --install .
CD %FULL_SOURCE_DIRECTORY%
RMDIR /S /Q qtserialport

echo Preparing: qtactiveqt
CD %FULL_SOURCE_DIRECTORY%\qtactiveqt
MKDIR out && CD out
call qt-configure-module.bat ..
cmake --build . --parallel
cmake --install .
CD %FULL_SOURCE_DIRECTORY%
RMDIR /S /Q qtactiveqt

echo Preparing: qtcoap
CD %FULL_SOURCE_DIRECTORY%\qtcoap
MKDIR out && CD out
call qt-configure-module.bat ..
cmake --build . --parallel
cmake --install .
CD %FULL_SOURCE_DIRECTORY%
RMDIR /S /Q qtcoap

echo Preparing: qtnetworkauth
CD %FULL_SOURCE_DIRECTORY%\qtnetworkauth
MKDIR out && CD out
call qt-configure-module.bat ..
cmake --build . --parallel
cmake --install .
CD %FULL_SOURCE_DIRECTORY%
RMDIR /S /Q qtnetworkauth

echo Preparing: qtsvg
CD %FULL_SOURCE_DIRECTORY%\qtsvg
MKDIR out && CD out
call qt-configure-module.bat ..
cmake --build . --parallel
cmake --install .
CD %FULL_SOURCE_DIRECTORY%
RMDIR /S /Q qtsvg