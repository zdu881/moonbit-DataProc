/// 计算数组的均值
/// 参数：data - 输入数据数组
/// 返回：Option<Double> - 当数据为空时返回None
/// 示例：mean([1.0, 2.0, 3.0]) => Some(2.0)
pub fn mean(data: Array[Double]) -> Double? {
  if data.is_empty() {
    None
  } else {
    let sum = data.fold(init = 0.0, fn(acc, x) { acc + x })
    Some(sum / (data.length().to_double()))
  }
}

/// 计算数组的中位数
/// 参数：data - 输入数据数组
/// 返回：Option<Double> - 当数据为空时返回None
/// 示例：median([1.0, 3.0, 2.0]) => Some(2.0)
pub fn median(data: Array[Double]) -> Double? {
  if data.is_empty() {
    None
  } else {
    let sorted = data.copy()
    let _ = sorted.sort()
    let n = sorted.length()
    if n % 2 == 1 {
      Some(sorted[n / 2])
    } else {
      mean([sorted[n / 2 - 1], sorted[n / 2]])
    }
  }
}

///| 计算数组的众数
/// 参数：data - 输入数据数组
/// 返回：Option<Double> - 当数据为空时返回None
/// 示例：mode([1.0, 2.0, 2.0, 3.0]) => Some(2.0)
pub fn mode(data : Array[Double]) -> Double? {
  if data.is_empty() {
    None
  } else {
    let frequency : @hashmap.T[Double, Int] = @hashmap.new(
      capacity=data.length(),
    )
    data.each(fn(x) {
      let current = match frequency.get(x) {
        Some(v) => v
        None => 0
      }
      frequency.set(x, current + 1)
    })
    let mut max_freq = 0
    let mut max_val = 0.0
    frequency
    .iter2()
    .each(fn(k, v) {
      if v > max_freq {
        max_freq = v
        max_val = k
      }
    })
    Some(max_val)
  }
}