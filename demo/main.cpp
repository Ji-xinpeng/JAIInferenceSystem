#include <iostream>
#include <string>

int main(int argc, char* argv[])
{
    std::string modelPath = "JAIInferenceSystem/onnx_model/resnet.onnx";
    std::cout << "onnx model path : " << modelPath << std::endl;

    return 0;
}