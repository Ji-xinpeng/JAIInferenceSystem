#ifndef __CONFIG_H__
#define __CONFIG_H__

enum BackendType { CPU, CUDA, OPEN_CL, CORE_ML };

struct Config
{
    const char* modelPath;
    BackendType backend = CPU;
    // tensor
};

#endif // __CONFIG_H__