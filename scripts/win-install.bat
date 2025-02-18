set PATH=C:\Program Files\NVIDIA GPU Computing Toolkit\CUDA\v11.4\bin;%PATH%
set PATH=C:\Program Files\Microsoft Visual Studio\2022\Enterprise\MSBuild\Current\Bin;%PATH%
set PATH=C:\Program Files\cmake\bin;%PATH%

set CudaToolkitDir=C:\Program Files\NVIDIA GPU Computing Toolkit\CUDA\v11.4

mkdir build
cd build

cmake -G "Visual Studio 17 2022" -A x64 -DCMAKE_BUILD_TYPE=Release -DCMAKE_VS_PLATFORM_TOOLSET_CUDA=11.4 .. || type CMakeFiles\CMakeError.log || type CMakeFiles\CMakeOutput.log || exit /b 1

MSBuild zentcashminer.sln /p:Configuration=Release /m /v:n

cd Release

argon2-cpp-test
