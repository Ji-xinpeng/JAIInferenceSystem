#include "JNet.h"

JNet::JNet() {
    std::cout << "JNet constructor" << std::endl;
}   

JNet::~JNet() {
    std::cout << "JNet destructor" << std::endl;
}

bool JNet::loadNet(const char* netPath) {
    std::cout << "JNet begin loadNet" << std::endl;
    return true;
}
