#ifndef __JNET_H_
#define __JNET_H_

#include <iostream> 
#include <string>
#include <assert.h>
#include "../config/config.h"
#include "onnxruntime/core/session/onnxruntime_cxx_api.h"
#include "onnxruntime/core/session/onnxruntime_c_api.h"

class JNet
{
private:
    const char* m_netPath;
    BackendType m_backend;

public:
    JNet(Config& config);
    ~JNet();

public:
    bool loadNet();

    bool parseNet();
};


#endif // __JNET_H_