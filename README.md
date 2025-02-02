## 项目描述

DataProc 是一个用于数据统计分析的库，提供了多种常用的统计函数，包括均值、中位数、众数、方差、标准差、协方差和皮尔逊相关系数等。

## 安装

请确保已安装 Moonbit 编程语言，然后克隆此仓库并导入项目。

```sh
git clone https://github.com/zdu881/DataProc.git
```

## 使用示例

```moonbit

let data = [1.0, 2.0, 3.0, 4.0, 5.0]

let mean_value = @DataProc.mean(data)
print("均值: ", mean_value)

let median_value = @DataProc.median(data)
print("中位数: ", median_value)
```
