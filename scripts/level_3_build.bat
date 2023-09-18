echo Modules to build: ['qtconnectivity', 'qtmqtt', 'qtsensors', 'qtgrpc', 'qtopcua', 'qtlottie', 'qt5compat', 'qttools', 'qtremoteobjects', 'qtscxml', 'qtquicktimeline', 'qtwebsockets', 'qtwayland', 'qtpositioning']

echo Preparing: qtconnectivity
CD %FULL_SOURCE_DIRECTORY%\qtconnectivity
MKDIR out && CD out
call qt-configure-module.bat ..
cmake --build . --parallel
cmake --install .
CD %FULL_SOURCE_DIRECTORY%
RMDIR /S /Q qtconnectivity

echo Preparing: qtmqtt
CD %FULL_SOURCE_DIRECTORY%\qtmqtt
MKDIR out && CD out
call qt-configure-module.bat ..
cmake --build . --parallel
cmake --install .
CD %FULL_SOURCE_DIRECTORY%
RMDIR /S /Q qtmqtt

echo Preparing: qtsensors
CD %FULL_SOURCE_DIRECTORY%\qtsensors
MKDIR out && CD out
call qt-configure-module.bat ..
cmake --build . --parallel
cmake --install .
CD %FULL_SOURCE_DIRECTORY%
RMDIR /S /Q qtsensors

echo Preparing: qtgrpc
CD %FULL_SOURCE_DIRECTORY%\qtgrpc
MKDIR out && CD out
call qt-configure-module.bat ..
cmake --build . --parallel
cmake --install .
CD %FULL_SOURCE_DIRECTORY%
RMDIR /S /Q qtgrpc

echo Preparing: qtopcua
CD %FULL_SOURCE_DIRECTORY%\qtopcua
MKDIR out && CD out
call qt-configure-module.bat ..
cmake --build . --parallel
cmake --install .
CD %FULL_SOURCE_DIRECTORY%
RMDIR /S /Q qtopcua

echo Preparing: qtlottie
CD %FULL_SOURCE_DIRECTORY%\qtlottie
MKDIR out && CD out
call qt-configure-module.bat ..
cmake --build . --parallel
cmake --install .
CD %FULL_SOURCE_DIRECTORY%
RMDIR /S /Q qtlottie

echo Preparing: qt5compat
CD %FULL_SOURCE_DIRECTORY%\qt5compat
MKDIR out && CD out
call qt-configure-module.bat ..
cmake --build . --parallel
cmake --install .
CD %FULL_SOURCE_DIRECTORY%
RMDIR /S /Q qt5compat

echo Preparing: qttools
CD %FULL_SOURCE_DIRECTORY%\qttools
MKDIR out && CD out
call qt-configure-module.bat ..
cmake --build . --parallel
cmake --install .
CD %FULL_SOURCE_DIRECTORY%
RMDIR /S /Q qttools

echo Preparing: qtremoteobjects
CD %FULL_SOURCE_DIRECTORY%\qtremoteobjects
MKDIR out && CD out
call qt-configure-module.bat ..
cmake --build . --parallel
cmake --install .
CD %FULL_SOURCE_DIRECTORY%
RMDIR /S /Q qtremoteobjects

echo Preparing: qtscxml
CD %FULL_SOURCE_DIRECTORY%\qtscxml
MKDIR out && CD out
call qt-configure-module.bat ..
cmake --build . --parallel
cmake --install .
CD %FULL_SOURCE_DIRECTORY%
RMDIR /S /Q qtscxml

echo Preparing: qtquicktimeline
CD %FULL_SOURCE_DIRECTORY%\qtquicktimeline
MKDIR out && CD out
call qt-configure-module.bat ..
cmake --build . --parallel
cmake --install .
CD %FULL_SOURCE_DIRECTORY%
RMDIR /S /Q qtquicktimeline

echo Preparing: qtwebsockets
CD %FULL_SOURCE_DIRECTORY%\qtwebsockets
MKDIR out && CD out
call qt-configure-module.bat ..
cmake --build . --parallel
cmake --install .
CD %FULL_SOURCE_DIRECTORY%
RMDIR /S /Q qtwebsockets

echo Preparing: qtwayland
CD %FULL_SOURCE_DIRECTORY%\qtwayland
MKDIR out && CD out
call qt-configure-module.bat ..
cmake --build . --parallel
cmake --install .
CD %FULL_SOURCE_DIRECTORY%
RMDIR /S /Q qtwayland

echo Preparing: qtpositioning
CD %FULL_SOURCE_DIRECTORY%\qtpositioning
MKDIR out && CD out
call qt-configure-module.bat ..
cmake --build . --parallel
cmake --install .
CD %FULL_SOURCE_DIRECTORY%
RMDIR /S /Q qtpositioning