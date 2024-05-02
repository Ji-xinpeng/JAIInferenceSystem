import torch
import torch.nn as nn
import torch.optim as optim
from torchvision import datasets, models, transforms
from torch.utils.data import DataLoader
import onnx

# 定义数据集的路径
data_dir = '/home/JAIInferenceSystem/model_train/dataset'

# 检查CUDA是否可用，如果可用则使用GPU，否则使用CPU
device = torch.device("cuda:0" if torch.cuda.is_available() else "cpu")

# 定义图像转换
transform = transforms.Compose([
    transforms.Resize(256),
    transforms.CenterCrop(224),
    transforms.ToTensor(),
    transforms.Normalize(mean=[0.485, 0.456, 0.406], std=[0.229, 0.224, 0.225]),
])

# 加载数据集
dataset = datasets.ImageFolder(root=data_dir, transform=transform)
# 设置数据加载器，确保数据也在正确的设备上
dataloader = DataLoader(dataset, batch_size=32, shuffle=True, num_workers=4)
dataloader = iter(dataloader)

# 加载预训练的ResNet-18模型
model = models.resnet18(pretrained=True)
num_ftrs = model.fc.in_features
model.fc = nn.Linear(num_ftrs, 5)  # 替换最后的全连接层为5个类别

# 将模型移动到选定的设备上
model = model.to(device)

# 定义损失函数和优化器
criterion = nn.CrossEntropyLoss()
optimizer = optim.SGD(model.parameters(), lr=0.001, momentum=0.9)

# 训练模型
device = torch.device("cuda:0" if torch.cuda.is_available() else "cpu")
model = model.to(device)
criterion = criterion.to(device)

model.train()
model.cuda()
num_epochs = 10
for epoch in range(num_epochs):
    running_loss = 0.0
    for i, data in enumerate(dataloader, 0):
        # 从data中解包输入和标签
        inputs, labels = data
        # 将输入和标签移动到正确的设备上
        inputs, labels = inputs.to(device), labels.to(device)
        # 计算损失并进行反向传播
        optimizer.zero_grad()
        outputs = model(inputs)
        loss = criterion(outputs, labels)
        loss.backward()
        optimizer.step()

    print(f'Epoch [{epoch+1}/{num_epochs}], Loss: {loss.item():.4f}')

# 保存模型权重
torch.save(model.state_dict(), '../onnx_model/resnet.pth')

# 将模型转换为ONNX格式
dummy_input = torch.randn(1, 3, 224, 224)  # 假设输入是3通道的224x224图像
dummy_input = dummy_input.to(device)
model.eval()  # 设置模型为评估模式
torch.onnx.export(model, dummy_input, '../onnx_model/resnet.onnx', verbose=True)

print("Model trained and exported to ONNX successfully.")