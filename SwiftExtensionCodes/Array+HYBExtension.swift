//
//  Array+HYBExtension.swift
//  SwiftExtensionCollection
//
//  Created by huangyibiao on 15/9/22.
//  Copyright © 2015年 huangyibiao. All rights reserved.
//

import UIKit

/// Array's useful extensions.
///
/// Author: huangyibiao
/// Github: http://github.com/CoderJackyHuang/
/// Blog:   http://www.hybblog.com/
public extension Array {
  /// 安全移除指定索引位置的元素.
  ///
  /// - parameter index 指定移除元素的索引
  ///
  /// - returns:  如果移除成功，返回被移除元素，否则返回nil
  public mutating func hyb_safeRemoveAtIndex(index: Int) ->Element? {
    if index < 0 || index >= self.count {
      return nil
    }
    
    return self.removeAtIndex(index)
  }
  
  /// 判断数组中是否包含某元素。
  ///
  /// - parameter object 遵守Equatable协议的元素
  ///
  /// - returns:  如果包含，返回true,否则返回false。
  public func hyb_isContain<T where T: Equatable>(object: T) ->Bool {
    let filterResults = self.filter { (element) -> Bool in
      if let e = element as? T {
        return e == object
      }
      
      return false
    }
    
    return filterResults.count > 0
  }
  
  ///  更安全地获取元素
  ///
  ///  - parameter index: 索引
  ///
  ///  - returns: 如果索引正确，返回对应的元素，否则返回nil
  public func hyb_safeElement(atIndex index: Int) ->Element? {
    if index < 0 || index > self.count {
      return nil
    }
    
    let array = self
    
    return array[index]
  }
}