#include <iostream>
#include <memory>
#include "/home/JAIInferenceSystem/src/net/JNet.h"
#include "/home/JAIInferenceSystem/src/config/config.h"


int main(int argc, char* argv[])
{
    std::cout << "------------------ infer start ------------------" << std::endl;
    char* modelPath = "JAIInferenceSystem/onnx_model/resnet.onnx";
    
    Config config;
    config.modelPath = modelPath;
    config.backend = CPU;

    std::unique_ptr<JNet> net(new JNet());
    bool ret;
    ret = net->loadNet(modelPath);
    if (!ret)
    {
        std::cout << "加载模型失败" << std::endl;
        return -1;
    }

    std::cout << "------------------ infer end ------------------" << std::endl;
    return 0;
}