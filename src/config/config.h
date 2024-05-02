#ifndef __CONFIG_H__
#define __CONFIG_H__

enum BackendType { CPU, GPU, OPEN_CL };

struct Config
{
    char* modelPath;
    BackendType backend;
    // tensor
};

#endif // __CONFIG_H__