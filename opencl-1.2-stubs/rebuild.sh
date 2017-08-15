#!/bin/sh -x
if [ "x$1" = "xARM32" ]; then
	arm-linux-gnueabihf-gcc -o libOpenCL.so -Iinclude opencl_stubs.c -fPIC -shared
elif [ "x$1" = "xARM64" ]; then
	aarch64-linux-gnu-gcc -o libOpenCL.so -Iinclude -shared opencl_stubs.c -fPIC	
else
	gcc -o libOpenCL.so -Iinclude opencl_stubs.c -fPIC -shared
fi
