#include <iostream>
#include <memory>
#include "../src/net/JNet.h"
#include "../src/config/config.h"


int main(int argc, char* argv[])
{
    std::cout << "------------------ infer start ------------------" << std::endl;

    Config config;
    config.modelPath = "/home/JAIInferenceSystem/onnx_model/resnet.onnx";
    config.backend = CPU;

    std::unique_ptr<JNet> net(new JNet(config));
    bool ret;
    ret = net->loadNet();
    if (!ret)
    {
        std::cout << "加载模型失败" << std::endl;
        return -1;
    }

    std::cout << "------------------ infer end ------------------" << std::endl;
    return 0;
}