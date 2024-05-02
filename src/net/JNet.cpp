#include "JNet.h"

JNet::JNet(Config& config) 
{
    std::cout << "JNet constructor" << std::endl;
    m_netPath = config.modelPath;
    m_backend = config.backend;
}   

JNet::~JNet() 
{
    std::cout << "JNet destructor" << std::endl;
}

bool JNet::loadNet() 
{
    std::cout << "JNet begin loadNet" << std::endl;
    bool ret = parseNet();
    if (!ret)
    {
        std::cout << "JNet loadNet failed" << std::endl;
        return false;
    }
    return true;
}

/**
 * @brief https://blog.csdn.net/AIcar_lrm/article/details/134873176
*/
bool JNet::parseNet()
{
    std::cout << "JNet begin parseNet" << std::endl;
    Ort::Env env(ORT_LOGGING_LEVEL_WARNING, "ONNX_C_API");
    std::wcout << L"Attempting to load model from: " << m_netPath << std::endl;
    Ort::SessionOptions session_options;

    Ort::Session session(env, m_netPath, session_options);
    Ort::AllocatorWithDefaultOptions allocator;

    // // 获取输入节点信息
    // size_t num_input_nodes = session.GetInputCount();
    // size_t num_output_nodes = session.GetOutputCount();
    // std::cout << "输入节点的数量: " << num_input_nodes << std::endl;
    // std::cout << "输出节点的数量: " << num_output_nodes << std::endl;

    // // 定义输入和输出节点的名称向量
    // std::vector<std::string> input_node_names;
    // std::vector<std::string> output_node_names;

    // // 获取输入节点信息并填充到向量中
    // for (size_t i = 0; i < num_input_nodes; i++) {
    //     // Ort::AllocatedStringPtr in_name = session.GetInputName(i, allocator);
    //     std::string in_name = session.GetInputName(i, allocator);
    //     std::cout << "Input Name: " << in_name << std::endl;
    //     input_node_names.push_back(in_name);
    // }

    return true;
}