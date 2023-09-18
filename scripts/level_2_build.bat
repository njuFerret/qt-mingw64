echo Modules to build: ['qtserialbus', 'qtdeclarative']

echo Preparing: qtserialbus
CD %FULL_SOURCE_DIRECTORY%\qtserialbus
MKDIR out && CD out
call qt-configure-module.bat ..
cmake --build . --parallel
cmake --install .
CD %FULL_SOURCE_DIRECTORY%
RMDIR /S /Q qtserialbus

echo Preparing: qtdeclarative
CD %FULL_SOURCE_DIRECTORY%\qtdeclarative
MKDIR out && CD out
call qt-configure-module.bat ..
cmake --build . --parallel
cmake --install .
CD %FULL_SOURCE_DIRECTORY%
RMDIR /S /Q qtdeclarative