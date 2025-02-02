// 相关分析模块
/// 计算协方差
/// 参数：x, y - 两个数据数组
/// 返回：Option<Double> - 当数组长度不同或为空时返回None
/// 示例：covariance([1.0,2.0,3.0], [2.0,4.0,6.0]) => Some(2.0)
pub fn covariance(x : Array[Double], y : Array[Double]) -> Double? {
  if x.length() != y.length() || x.length() < 2 {
    return None
  }
  let mean_x = mean(x).unwrap()
  let mean_y = mean(y).unwrap()
  let mut sum = 0.0
  for i = 0; i < x.length(); i = i + 1 {
    sum = sum + (x[i] - mean_x) * (y[i] - mean_y)
  }
  Some(sum / (x.length().to_double() - 1.0))
}

/// 计算皮尔逊相关系数
/// 参数：x, y - 两个数据数组
/// 返回：Option<Double> - 当数组长度不同或为空时返回None
/// 示例：pearson_corr([1.0,2.0,3.0], [2.0,4.0,6.0]) => Some(1.0)
pub fn pearson_corr(x: Array[Double], y: Array[Double]) -> Double? {
  let cov = covariance(x, y).unwrap()
  let std_x = std_dev(x).unwrap()
  let std_y = std_dev(y).unwrap()
  Some(cov / (std_x * std_y))
}