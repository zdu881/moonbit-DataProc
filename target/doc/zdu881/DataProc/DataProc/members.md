# Documentation
|Value|description|
|---|---|
|[covariance](#covariance)| 计算协方差|
|[mean](#mean)| 计算数组的均值|
|[median](#median)| 计算数组的中位数|
|[mode](#mode)| 计算数组的众数|
|[pearson\_corr](#pearson_corr)| 计算皮尔逊相关系数|
|[quantile](#quantile)| 计算分位数|
|[std\_dev](#std_dev)| 计算标准差|
|[variance](#variance)| 计算样本方差|

## covariance

```moonbit
:::source,zdu881/DataProc/DataProc/correlation.mbt,6:::fn covariance(x : <a href="moonbitlang/core/array#Array">Array</a>[Double], y : <a href="moonbitlang/core/array#Array">Array</a>[Double]) -> Double?
```
 计算协方差
参数：x, y - 两个数据数组
返回：Option<Double> - 当数组长度不同或为空时返回None
示例：covariance(\[1.0,2.0,3.0\], \[2.0,4.0,6.0\]) =\> Some(2.0)

## mean

```moonbit
:::source,zdu881/DataProc/DataProc/basics.mbt,5:::fn mean(data : <a href="moonbitlang/core/array#Array">Array</a>[Double]) -> Double?
```
 计算数组的均值
参数：data - 输入数据数组
返回：Option<Double> - 当数据为空时返回None
示例：mean(\[1.0, 2.0, 3.0\]) =\> Some(2.0)

## median

```moonbit
:::source,zdu881/DataProc/DataProc/basics.mbt,18:::fn median(data : <a href="moonbitlang/core/array#Array">Array</a>[Double]) -> Double?
```
 计算数组的中位数
参数：data - 输入数据数组
返回：Option<Double> - 当数据为空时返回None
示例：median(\[1.0, 3.0, 2.0\]) =\> Some(2.0)

## mode

```moonbit
:::source,zdu881/DataProc/DataProc/basics.mbt,37:::fn mode(data : <a href="moonbitlang/core/array#Array">Array</a>[Double]) -> Double?
```
 计算数组的众数
参数：data - 输入数据数组
返回：Option<Double> - 当数据为空时返回None
示例：mode(\[1.0, 2.0, 2.0, 3.0\]) =\> Some(2.0)

## pearson\_corr

```moonbit
:::source,zdu881/DataProc/DataProc/correlation.mbt,23:::fn pearson_corr(x : <a href="moonbitlang/core/array#Array">Array</a>[Double], y : <a href="moonbitlang/core/array#Array">Array</a>[Double]) -> Double?
```
 计算皮尔逊相关系数
参数：x, y - 两个数据数组
返回：Option<Double> - 当数组长度不同或为空时返回None
示例：pearson\_corr(\[1.0,2.0,3.0\], \[2.0,4.0,6.0\]) =\> Some(1.0)

## quantile

```moonbit
:::source,zdu881/DataProc/DataProc/dispersion.mbt,31:::fn quantile(data : <a href="moonbitlang/core/array#Array">Array</a>[Double], q : Double) -> Double?
```
 计算分位数
参数：data - 输入数据数组，q - 分位点 (0.0-1.0)
返回：Option<Double> - 当数据为空或q超出范围时返回None
示例：quantile(\[1.0,2.0,3.0,4.0\], 0.5) =\> Some(2.5)

## std\_dev

```moonbit
:::source,zdu881/DataProc/DataProc/dispersion.mbt,23:::fn std_dev(data : <a href="moonbitlang/core/array#Array">Array</a>[Double]) -> Double?
```
 计算标准差
参数：data - 输入数据数组
返回：Option<Double> - 当数据为空时返回None
示例：std\_dev(\[1.0, 2.0, 3.0, 4.0, 5.0\]) =\> Some(1.5811388300841898)

## variance

```moonbit
:::source,zdu881/DataProc/DataProc/dispersion.mbt,6:::fn variance(data : <a href="moonbitlang/core/array#Array">Array</a>[Double]) -> Double?
```
 计算样本方差
参数：data - 输入数据数组
返回：Option<Double> - 当数据为空时返回None
示例：variance(\[1.0, 2.0, 3.0, 4.0, 5.0\]) =\> Some(2.5)
