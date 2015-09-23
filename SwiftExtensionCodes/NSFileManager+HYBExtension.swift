//
//  NSFileManager+HYBExtension.swift
//  SwiftExtensionCollection
//
//  Created by huangyibiao on 15/9/23.
//  Copyright © 2015年 huangyibiao. All rights reserved.
//

import UIKit

/// NSFileManager's useful extensions.
///
/// Author: huangyibiao
/// Github: http://github.com/CoderJackyHuang/
/// Blog:   http://www.hybblog.com/
public extension NSFileManager {
  ///  获取文件的大小
  ///
  ///  - parameter path: 文件完整路径
  ///
  ///  - returns: 文件的大小。如果失败，返回0
  public func hyb_fileSize(atPath path: String) ->Int {
    do {
      let attributes: NSDictionary = try NSFileManager.defaultManager().attributesOfItemAtPath(path)
      
      return Int(attributes.fileSize())
    } catch {
      return 0
    }
  }
}
