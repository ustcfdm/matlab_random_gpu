% change your complier directory accordingly
!nvcc -c ./src/MgGeneratePoisson.cu -o ./src/MgGeneratePoisson.obj -ccbin "C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.21.27702\bin\Hostx64\x64"
mex ./src/MgPoissrndGpu.cpp ./src/MgGeneratePoisson.obj -outdir ./bin -lcudart -lcurand -L"C:\Program Files\NVIDIA GPU Computing Toolkit\CUDA\v10.1\lib\x64"
delete ./src/MgGeneratePoisson.obj