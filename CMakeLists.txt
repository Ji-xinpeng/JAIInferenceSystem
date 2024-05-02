cmake_minimum_required(VERSION 3.10)

project(JAIInferenceSystem)

message(STATUS "Current source directory: ${CMAKE_CURRENT_SOURCE_DIR}")

set(CMAKE_CXX_STANDARD 11) 

set(SRC_INCLUDE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/src)

file(GLOB NET_SOURCE_FILES ${SRC_INCLUDE_DIR}/net/*.cpp)
file(GLOB NET_SOURCE_INCLUDE ${SRC_INCLUDE_DIR}/net/*.h)
file(GLOB OPERATOR_SOURCE_FILES ${SRC_INCLUDE_DIR}/operator/*.cpp)
file(GLOB OPERATOR_SOURCE_INCLUDE ${SRC_INCLUDE_DIR}/operator/*.h)
file(GLOB TENSOR_SOURCE_FILES ${SRC_INCLUDE_DIR}/tensor/*.cpp)
file(GLOB TENSOR_SOURCE_INCLUDE ${SRC_INCLUDE_DIR}/tensor/*.h)
file(GLOB TENSOR_SOURCE_FILES ${SRC_INCLUDE_DIR}/config/*.h)

set(
    SOURCE_FILES 
    ${CMAKE_CURRENT_SOURCE_DIR}/demo/main.cpp
    ${NET_SOURCE_FILES}
    ${NET_SOURCE_INCLUDE}
    ${OPERATOR_SOURCE_FILES}
    ${OPERATOR_SOURCE_INCLUDE}
    ${TENSOR_SOURCE_FILES}
    ${TENSOR_SOURCE_INCLUDE}
)

# 添加可执行文件
add_executable(JAIInferenceSystem ${SOURCE_FILES})

target_link_libraries(
    JAIInferenceSystem
    /usr/local/lib/libonnxruntime.so
    /usr/local/lib/libonnxruntime.so.1.8.0 
    /usr/local/lib/libonnxruntime_providers_shared.so
)
