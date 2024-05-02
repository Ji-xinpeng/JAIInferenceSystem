cmake_minimum_required(VERSION 3.10)

project(JAIInferenceSystem)

message(STATUS "Current source directory: ${CMAKE_CURRENT_SOURCE_DIR}")

# 添加可执行文件
add_executable(JAIInferenceSystem ${CMAKE_CURRENT_SOURCE_DIR}/demo/main.cpp)
