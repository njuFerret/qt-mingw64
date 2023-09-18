echo Modules to build: ['qtbase']

echo Preparing: qtbase
CD %FULL_SOURCE_DIRECTORY%\qtbase
MKDIR out && CD out
call ..\configure.bat -qt-zlib -qt-libjpeg -qt-libpng -qt-freetype -qt-pcre -qt-harfbuzz -openssl-runtime -opengl dynamic -prefix %RELEASE_BUILD_DIR% -release -opensource -nomake examples -nomake tests
cmake --build . --parallel
cmake --install .
CD %FULL_SOURCE_DIRECTORY%
RMDIR /S /Q qtbase