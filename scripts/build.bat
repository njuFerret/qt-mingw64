REM call %BUILD_START_DIR%\scripts\level_0_build.bat
REM call %BUILD_START_DIR%\scripts\level_1_build.bat
REM call %BUILD_START_DIR%\scripts\level_2_build.bat
REM call %BUILD_START_DIR%\scripts\level_3_build.bat
REM call %BUILD_START_DIR%\scripts\level_4_build.bat
REM call %BUILD_START_DIR%\scripts\level_5_build.bat
REM call %BUILD_START_DIR%\scripts\level_6_build.bat

echo Modules to build: ['qtbase', 'qtimageformats', 'qtlanguageserver', 'qtshadertools', 'qtsvg', 'qtdeclarative', 'qtquicktimeline', 'qtquick3d', 'qtmultimedia', 'qt3d', 'qt5compat', 'qtactiveqt', 'qtcharts', 'qtcoap', 'qtconnectivity', 'qtdatavis3d', 'qtwebsockets', 'qthttpserver', 'qttools', 'qtserialport', 'qtpositioning', 'qtwebchannel', 'qtwebengine', 'qtdoc', 'qtgrpc', 'qtlocation', 'qtlottie', 'qtmqtt', 'qtnetworkauth', 'qtopcua', 'qtquick3dphysics', 'qtquickeffectmaker', 'qtremoteobjects', 'qtscxml', 'qtsensors', 'qtserialbus', 'qtspeech', 'qttranslations', 'qtvirtualkeyboard', 'qtwayland', 'qtwebview']

echo Preparing: qtbase
CD %FULL_SOURCE_DIRECTORY%\qtbase
MKDIR out && CD out
call ..\configure.bat -qt-zlib -qt-libjpeg -qt-libpng -qt-freetype -qt-pcre -qt-harfbuzz -openssl-runtime -opengl dynamic -prefix %RELEASE_BUILD_DIR% -release -opensource -nomake examples -nomake tests
cmake --build . --parallel
cmake --install .
CD %FULL_SOURCE_DIRECTORY%
RMDIR /S /Q qtbase\out

echo Preparing: qtimageformats
CD %FULL_SOURCE_DIRECTORY%\qtimageformats
MKDIR out && CD out
call qt-configure-module.bat ..
cmake --build . --parallel
cmake --install .
CD %FULL_SOURCE_DIRECTORY%
RMDIR /S /Q qtimageformats\out

echo Preparing: qtlanguageserver
CD %FULL_SOURCE_DIRECTORY%\qtlanguageserver
MKDIR out && CD out
call qt-configure-module.bat ..
cmake --build . --parallel
cmake --install .
CD %FULL_SOURCE_DIRECTORY%
RMDIR /S /Q qtlanguageserver\out

echo Preparing: qtshadertools
CD %FULL_SOURCE_DIRECTORY%\qtshadertools
MKDIR out && CD out
call qt-configure-module.bat ..
cmake --build . --parallel
cmake --install .
CD %FULL_SOURCE_DIRECTORY%
RMDIR /S /Q qtshadertools\out

echo Preparing: qtsvg
CD %FULL_SOURCE_DIRECTORY%\qtsvg
MKDIR out && CD out
call qt-configure-module.bat ..
cmake --build . --parallel
cmake --install .
CD %FULL_SOURCE_DIRECTORY%
RMDIR /S /Q qtsvg\out

echo Preparing: qtdeclarative
CD %FULL_SOURCE_DIRECTORY%\qtdeclarative
MKDIR out && CD out
call qt-configure-module.bat ..
cmake --build . --parallel
cmake --install .
CD %FULL_SOURCE_DIRECTORY%
RMDIR /S /Q qtdeclarative\out

echo Preparing: qtquicktimeline
CD %FULL_SOURCE_DIRECTORY%\qtquicktimeline
MKDIR out && CD out
call qt-configure-module.bat ..
cmake --build . --parallel
cmake --install .
CD %FULL_SOURCE_DIRECTORY%
RMDIR /S /Q qtquicktimeline\out

echo Preparing: qtquick3d
CD %FULL_SOURCE_DIRECTORY%\qtquick3d
MKDIR out && CD out
call qt-configure-module.bat ..
cmake --build . --parallel
cmake --install .
CD %FULL_SOURCE_DIRECTORY%
RMDIR /S /Q qtquick3d\out

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
RMDIR /S /Q qtmultimedia\out
RMDIR /S /Q %BUILD_START_DIR%\ffmpeg-6.0-full_build-shared

echo Preparing: qt3d
CD %FULL_SOURCE_DIRECTORY%\qt3d
MKDIR out && CD out
call qt-configure-module.bat ..
cmake --build . --parallel
cmake --install .
CD %FULL_SOURCE_DIRECTORY%
RMDIR /S /Q qt3d\out

echo Preparing: qt5compat
CD %FULL_SOURCE_DIRECTORY%\qt5compat
MKDIR out && CD out
call qt-configure-module.bat ..
cmake --build . --parallel
cmake --install .
CD %FULL_SOURCE_DIRECTORY%
RMDIR /S /Q qt5compat\out

echo Preparing: qtactiveqt
CD %FULL_SOURCE_DIRECTORY%\qtactiveqt
MKDIR out && CD out
call qt-configure-module.bat ..
cmake --build . --parallel
cmake --install .
CD %FULL_SOURCE_DIRECTORY%
RMDIR /S /Q qtactiveqt\out

echo Preparing: qtcharts
CD %FULL_SOURCE_DIRECTORY%\qtcharts
MKDIR out && CD out
call qt-configure-module.bat ..
cmake --build . --parallel
cmake --install .
CD %FULL_SOURCE_DIRECTORY%
RMDIR /S /Q qtcharts\out

echo Preparing: qtcoap
CD %FULL_SOURCE_DIRECTORY%\qtcoap
MKDIR out && CD out
call qt-configure-module.bat ..
cmake --build . --parallel
cmake --install .
CD %FULL_SOURCE_DIRECTORY%
RMDIR /S /Q qtcoap\out

echo Preparing: qtconnectivity
CD %FULL_SOURCE_DIRECTORY%\qtconnectivity
MKDIR out && CD out
call qt-configure-module.bat ..
cmake --build . --parallel
cmake --install .
CD %FULL_SOURCE_DIRECTORY%
RMDIR /S /Q qtconnectivity\out

echo Preparing: qtdatavis3d
CD %FULL_SOURCE_DIRECTORY%\qtdatavis3d
MKDIR out && CD out
call qt-configure-module.bat ..
cmake --build . --parallel
cmake --install .
CD %FULL_SOURCE_DIRECTORY%
RMDIR /S /Q qtdatavis3d\out

echo Preparing: qtwebsockets
CD %FULL_SOURCE_DIRECTORY%\qtwebsockets
MKDIR out && CD out
call qt-configure-module.bat ..
cmake --build . --parallel
cmake --install .
CD %FULL_SOURCE_DIRECTORY%
RMDIR /S /Q qtwebsockets\out

echo Preparing: qthttpserver
CD %FULL_SOURCE_DIRECTORY%\qthttpserver
MKDIR out && CD out
call qt-configure-module.bat ..
cmake --build . --parallel
cmake --install .
CD %FULL_SOURCE_DIRECTORY%
RMDIR /S /Q qthttpserver\out

echo Preparing: qttools
CD %BUILD_START_DIR%
curl -L -o libclang-release_140-based-windows-mingw_64.7z https://github.com/FetheredSerpent/qt-mingw64/releases/download/dependencies/libclang-release_140-based-windows-mingw_64.7z
echo Extracting libclang
7zr x libclang-release_140-based-windows-mingw_64.7z -y
DEL libclang-release_140-based-windows-mingw_64.7z
CD %FULL_SOURCE_DIRECTORY%\qttools
MKDIR out && CD out
call qt-configure-module.bat ..
cmake --build . --parallel
cmake --install .
CD %FULL_SOURCE_DIRECTORY%
RMDIR /S /Q qttools\out
RMDIR /S /Q %BUILD_START_DIR%\libclang

echo Preparing: qtserialport
CD %FULL_SOURCE_DIRECTORY%\qtserialport
MKDIR out && CD out
call qt-configure-module.bat ..
cmake --build . --parallel
cmake --install .
CD %FULL_SOURCE_DIRECTORY%
RMDIR /S /Q qtserialport\out

echo Preparing: qtpositioning
CD %FULL_SOURCE_DIRECTORY%\qtpositioning
MKDIR out && CD out
call qt-configure-module.bat ..
cmake --build . --parallel
cmake --install .
CD %FULL_SOURCE_DIRECTORY%
RMDIR /S /Q qtpositioning\out

echo Preparing: qtwebchannel
CD %FULL_SOURCE_DIRECTORY%\qtwebchannel
MKDIR out && CD out
call qt-configure-module.bat ..
cmake --build . --parallel
cmake --install .
CD %FULL_SOURCE_DIRECTORY%
RMDIR /S /Q qtwebchannel\out

echo Not preparing: qtwebengine, Reason: Chromium build not supported using Mingw
REM CD %FULL_SOURCE_DIRECTORY%\qtwebengine
REM MKDIR out && CD out
REM call qt-configure-module.bat ..
REM cmake --build . --parallel
REM cmake --install .
REM CD %FULL_SOURCE_DIRECTORY%
REM RMDIR /S /Q qtwebengine\out

echo Preparing: qtgrpc
CD %FULL_SOURCE_DIRECTORY%\qtgrpc
MKDIR out && CD out
call qt-configure-module.bat ..
cmake --build . --parallel
cmake --install .
CD %FULL_SOURCE_DIRECTORY%
RMDIR /S /Q qtgrpc\out

echo Preparing: qtlocation
CD %FULL_SOURCE_DIRECTORY%\qtlocation
MKDIR out && CD out
call qt-configure-module.bat ..
cmake --build . --parallel
cmake --install .
CD %FULL_SOURCE_DIRECTORY%
RMDIR /S /Q qtlocation\out

echo Preparing: qtlottie
CD %FULL_SOURCE_DIRECTORY%\qtlottie
MKDIR out && CD out
call qt-configure-module.bat ..
cmake --build . --parallel
cmake --install .
CD %FULL_SOURCE_DIRECTORY%
RMDIR /S /Q qtlottie\out

echo Preparing: qtmqtt
CD %FULL_SOURCE_DIRECTORY%\qtmqtt
MKDIR out && CD out
call qt-configure-module.bat ..
cmake --build . --parallel
cmake --install .
CD %FULL_SOURCE_DIRECTORY%
RMDIR /S /Q qtmqtt\out

echo Preparing: qtnetworkauth
CD %FULL_SOURCE_DIRECTORY%\qtnetworkauth
MKDIR out && CD out
call qt-configure-module.bat ..
cmake --build . --parallel
cmake --install .
CD %FULL_SOURCE_DIRECTORY%
RMDIR /S /Q qtnetworkauth\out

echo Preparing: qtopcua
CD %FULL_SOURCE_DIRECTORY%\qtopcua
MKDIR out && CD out
call qt-configure-module.bat ..
cmake --build . --parallel
cmake --install .
CD %FULL_SOURCE_DIRECTORY%
RMDIR /S /Q qtopcua\out

echo Preparing: qtquick3dphysics
CD %FULL_SOURCE_DIRECTORY%\qtquick3dphysics
MKDIR out && CD out
call qt-configure-module.bat ..
cmake --build . --parallel
cmake --install .
CD %FULL_SOURCE_DIRECTORY%
RMDIR /S /Q qtquick3dphysics\out

echo Preparing: qtquickeffectmaker
CD %FULL_SOURCE_DIRECTORY%\qtquickeffectmaker
MKDIR out && CD out
call qt-configure-module.bat ..
cmake --build . --parallel
cmake --install .
CD %FULL_SOURCE_DIRECTORY%
RMDIR /S /Q qtquickeffectmaker\out

echo Preparing: qtremoteobjects
CD %FULL_SOURCE_DIRECTORY%\qtremoteobjects
MKDIR out && CD out
call qt-configure-module.bat ..
cmake --build . --parallel
cmake --install .
CD %FULL_SOURCE_DIRECTORY%
RMDIR /S /Q qtremoteobjects\out

echo Preparing: qtscxml
CD %FULL_SOURCE_DIRECTORY%\qtscxml
MKDIR out && CD out
call qt-configure-module.bat ..
cmake --build . --parallel
cmake --install .
CD %FULL_SOURCE_DIRECTORY%
RMDIR /S /Q qtscxml\out

echo Preparing: qtsensors
CD %FULL_SOURCE_DIRECTORY%\qtsensors
MKDIR out && CD out
call qt-configure-module.bat ..
cmake --build . --parallel
cmake --install .
CD %FULL_SOURCE_DIRECTORY%
RMDIR /S /Q qtsensors\out

echo Preparing: qtserialbus
CD %FULL_SOURCE_DIRECTORY%\qtserialbus
MKDIR out && CD out
call qt-configure-module.bat ..
cmake --build . --parallel
cmake --install .
CD %FULL_SOURCE_DIRECTORY%
RMDIR /S /Q qtserialbus\out

echo Preparing: qtspeech
CD %FULL_SOURCE_DIRECTORY%\qtspeech
MKDIR out && CD out
call qt-configure-module.bat ..
cmake --build . --parallel
cmake --install .
CD %FULL_SOURCE_DIRECTORY%
RMDIR /S /Q qtspeech\out

echo Preparing: qttranslations
CD %FULL_SOURCE_DIRECTORY%\qttranslations
MKDIR out && CD out
call qt-configure-module.bat ..
cmake --build . --parallel
cmake --install .
CD %FULL_SOURCE_DIRECTORY%
RMDIR /S /Q qttranslations\out

echo Preparing: qtvirtualkeyboard
CD %FULL_SOURCE_DIRECTORY%\qtvirtualkeyboard
MKDIR out && CD out
call qt-configure-module.bat ..
cmake --build . --parallel
cmake --install .
CD %FULL_SOURCE_DIRECTORY%
RMDIR /S /Q qtvirtualkeyboard\out

echo Preparing: qtwayland
CD %FULL_SOURCE_DIRECTORY%\qtwayland
MKDIR out && CD out
call qt-configure-module.bat ..
cmake --build . --parallel
cmake --install .
CD %FULL_SOURCE_DIRECTORY%
RMDIR /S /Q qtwayland\out

echo Preparing: qtwebview
CD %FULL_SOURCE_DIRECTORY%\qtwebview
MKDIR out && CD out
call qt-configure-module.bat ..
cmake --build . --parallel
cmake --install .
CD %FULL_SOURCE_DIRECTORY%
RMDIR /S /Q qtwebview\out

echo Preparing: qtdoc
CD %FULL_SOURCE_DIRECTORY%\qtdoc
MKDIR out && CD out
qtpaths -query QT_INSTALL_DOCS
call qt-configure-module.bat ..
ninja docs
ninja install
CD %FULL_SOURCE_DIRECTORY%
RMDIR /S /Q qtdoc\out
