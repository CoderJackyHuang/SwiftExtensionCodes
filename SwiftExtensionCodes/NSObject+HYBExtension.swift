//
//  NSObject+HYBExtension.swift
//  SwiftExtensionCollection
//
//  Created by huangyibiao on 15/9/22.
//  Copyright © 2015年 huangyibiao. All rights reserved.
//

import UIKit
import Foundation

/// UIView's useful extensions.
///
/// Author: huangyibiao
/// Github: http://github.com/CoderJackyHuang/
/// Blog:   http://www.hybblog.com/
public extension NSObject {
  /// 延迟指定的时长后执行闭包
  ///
  /// - parameter delayTimeInterval 延迟多少秒
  /// - parameter completion 延迟到指定的秒数后回调的闭包
  public class func hyb_delay(delayTimeInterval: NSTimeInterval, completion: () ->Void) {
    let timeinterval = UInt64(delayTimeInterval) * NSEC_PER_SEC
    let time = dispatch_time(DISPATCH_TIME_NOW, Int64(timeinterval))
    dispatch_after(time, dispatch_get_main_queue()) { () -> Void in
      completion()
    }
  }
}