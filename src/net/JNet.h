#ifndef __JNET_H_
#define __JNET_H_

#include <iostream> 
#include <vector>

class JNet
{
private:
    char* m_netPath;
public:
    JNet();
    ~JNet();

public:
    bool loadNet(const char* netPath);

    void printNet();
};


#endif // __JNET_H_