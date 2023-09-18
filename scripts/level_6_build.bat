echo Modules to build: ['qt3d', 'qtspeech', 'qtcharts', 'qtvirtualkeyboard', 'qtwebview', 'qtdoc', 'qtdatavis3d']

echo Preparing: qt3d
CD %FULL_SOURCE_DIRECTORY%\qt3d
MKDIR out && CD out
call qt-configure-module.bat ..
cmake --build . --parallel
cmake --install .
CD %FULL_SOURCE_DIRECTORY%
RMDIR /S /Q qt3d

echo Preparing: qtspeech
CD %FULL_SOURCE_DIRECTORY%\qtspeech
MKDIR out && CD out
call qt-configure-module.bat ..
cmake --build . --parallel
cmake --install .
CD %FULL_SOURCE_DIRECTORY%
RMDIR /S /Q qtspeech

echo Preparing: qtcharts
CD %FULL_SOURCE_DIRECTORY%\qtcharts
MKDIR out && CD out
call qt-configure-module.bat ..
cmake --build . --parallel
cmake --install .
CD %FULL_SOURCE_DIRECTORY%
RMDIR /S /Q qtcharts

echo Preparing: qtvirtualkeyboard
CD %FULL_SOURCE_DIRECTORY%\qtvirtualkeyboard
MKDIR out && CD out
call qt-configure-module.bat ..
cmake --build . --parallel
cmake --install .
CD %FULL_SOURCE_DIRECTORY%
RMDIR /S /Q qtvirtualkeyboard

echo Preparing: qtwebview
CD %FULL_SOURCE_DIRECTORY%\qtwebview
MKDIR out && CD out
call qt-configure-module.bat ..
cmake --build . --parallel
cmake --install .
CD %FULL_SOURCE_DIRECTORY%
RMDIR /S /Q qtwebview

echo Preparing: qtdoc
CD %FULL_SOURCE_DIRECTORY%\qtdoc
MKDIR out && CD out
call qt-configure-module.bat ..
cmake --build . --parallel
cmake --install .
CD %FULL_SOURCE_DIRECTORY%
RMDIR /S /Q qtdoc

echo Preparing: qtdatavis3d
CD %FULL_SOURCE_DIRECTORY%\qtdatavis3d
MKDIR out && CD out
call qt-configure-module.bat ..
cmake --build . --parallel
cmake --install .
CD %FULL_SOURCE_DIRECTORY%
RMDIR /S /Q qtdatavis3d