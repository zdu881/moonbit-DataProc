// 离散程度分析模块
/// 计算样本方差
/// 参数：data - 输入数据数组
/// 返回：Option<Double> - 当数据为空时返回None
/// 示例：variance([1.0, 2.0, 3.0, 4.0, 5.0]) => Some(2.5)
pub fn variance(data: Array[Double]) -> Double? {
  if data.is_empty() {
    None
  } else {
    let m = mean(data).unwrap()
    let sum = data.fold(init = 0.0, fn(acc, x) { 
      let diff = x - m
      acc + diff * diff 
    })
    Some(sum / (data.length().to_double() - 1.0))
  }
}

/// 计算标准差
/// 参数：data - 输入数据数组
/// 返回：Option<Double> - 当数据为空时返回None
/// 示例：std_dev([1.0, 2.0, 3.0, 4.0, 5.0]) => Some(1.5811388300841898)
pub fn std_dev(data: Array[Double]) -> Double? {
  variance(data).map(fn(v) { v.sqrt() })
}

/// 计算分位数
/// 参数：data - 输入数据数组，q - 分位点 (0.0-1.0)
/// 返回：Option<Double> - 当数据为空或q超出范围时返回None
/// 示例：quantile([1.0,2.0,3.0,4.0], 0.5) => Some(2.5)
pub fn quantile(data: Array[Double], q: Double) -> Double? {
  if data.is_empty() || q < 0.0 || q > 1.0 {
    None
  } else {
    let sorted = data.copy()
    let _ = sorted.sort()
    let n = sorted.length()
    let pos = (n - 1).to_double() * q
    let lower = sorted[pos.floor().to_int()]
    let upper = sorted[pos.ceil().to_int()]
    Some(lower + (upper - lower) * (pos - pos.floor()))
  }
}