#!/bin/bash
# 运行脚本的时候加参数，可以作为main的参数

# 定义可执行文件的名称变量
executable_name="JAIInferenceSystem"

# 获取当前目录的上一级目录
parent_dir=$(dirname "$(pwd)")

# 检查上一级目录下是否存在名为 'build' 的文件夹
if [ ! -d "$parent_dir/build" ]; then
    # 如果不存在，创建一个名为 'build' 的文件夹
    echo "Creating build directory in the parent directory..."
    mkdir -p "$parent_dir/build"
fi

# 进入上一级目录下的 'build' 文件夹
cd "$parent_dir/build"

# 输出当前路径，确认当前位置
echo "Current directory: $(pwd)"

cmake ..

make

# 检查是否成功构建了可执行文件
if [ -x "$executable_name" ]; then
    # 执行可执行文件
    ./"$executable_name" 
else
    echo "可执行文件 '$executable_name' 不存在!"
    exit 1
fi