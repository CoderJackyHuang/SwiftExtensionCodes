//
//  String+HYBExtension.swift
//  SwiftExtensionCollection
//
//  Created by huangyibiao on 15/9/22.
//  Copyright © 2015年 huangyibiao. All rights reserved.
//

import UIKit

/// UIView's useful extensions.
///
/// Author: huangyibiao
/// Github: http://github.com/CoderJackyHuang/
/// Blog:   http://www.hybblog.com/
public extension String {
  /// Get the length of a string
  public func hyb_length() ->Int {
    return self.characters.count
  }
  
  // MARK: Trim API
  
  /// 去掉字符串前后的空格，根据参数确定是否过滤换行符
  ///
  /// - parameter trimNewline 是否过滤换行符，默认为false
  public func hyb_trim(trimNewline: Bool = false) ->String {
    if trimNewline {
      return self.stringByTrimmingCharactersInSet(.whitespaceAndNewlineCharacterSet())
    }
    
    return self.stringByTrimmingCharactersInSet(.whitespaceCharacterSet())
  }
  
  /// 去掉字符串前面的空格，根据参数确定是否过滤换行符
  ///
  /// - parameter trimNewline 是否过滤换行符，默认为false
  public func hyb_trimLeft(trimNewline: Bool = false) ->String {
    if self.isEmpty {
      return self
    }
    
    var index = self.startIndex
    while index != self.endIndex {
      let ch = self.characters[index]
      if ch == Character(" ") {
        index++
        continue
      } else if ch == Character("\n") {
        if trimNewline {
          index++
          continue
        } else {
          break
        }
      }
      
      break
    }
    
    return self.substringFromIndex(index)
  }
  
  /// 去掉字符串后面的空格，根据参数确定是否过滤换行符
  ///
  /// - parameter trimNewline 是否过滤换行符，默认为false
  public func hyb_trimRight(trimNewline: Bool = false) ->String {
    if self.isEmpty {
      return self
    }
    
    var index = self.endIndex.predecessor()
    while index != self.startIndex {
      let ch = self.characters[index]
      if ch == Character(" ") {
        index--
        continue
      } else if ch == Character("\n") {
        if trimNewline {
          index--
          continue
        } else {
          index++
          break
        }
      }
      
      break
    }
    
    return self.substringToIndex(index)
  }
  
  // MARK: Substring API
  
  /// 获取子串的起始位置。如果找不到子串，返回NSNotFound，否则返回其所在起始位置
  ///
  /// - parameter substring 待查找的子字符串
  public func hyb_location(substring: String) ->Int {
    return (self as NSString).rangeOfString(substring).location
  }
  
  /// 根据起始位置和长度获取子串。如果位置和长度都合理，则返回子串，否则返回nil
  ///
  /// - parameter location  获取子串的起始位置
  /// - parameter length    获取子串的长度
  public func hyb_substring(location: Int, length: Int) ->String? {
    if location < 0 && location >= self.hyb_length() {
      return nil
    }
    
    if length <= 0 || length >= self.hyb_length() {
      return nil
    }
    
    return (self as NSString).substringWithRange(NSMakeRange(location, length))
  }
  
  /// 根据下标获取对应的字符。若索引正确，返回对应的字符，否则返回nil
  ///
  /// - parameter index 索引位置
  public subscript(index: Int) ->Character? {
    get {
      if let str = hyb_substring(index, length: 1) {
        return Character(str)
      }
      
      return nil
    }
  }
  
  /// 判断字符串是否包含子串。如果找到，返回true,否则返回false
  ///
  /// - parameter substring 子串
  public func hyb_isContain(substring: String) ->Bool {
    return (self as NSString).containsString(substring)
  }
  
  // MARK: Alphanum API
  
  /// 判断字符串是否全是数字组成
  /// 若为全数字组成，返回true，否则返回false
  public func hyb_isOnlyNumbers() ->Bool {
    let set = NSCharacterSet.decimalDigitCharacterSet().invertedSet
    let range = (self as NSString).rangeOfCharacterFromSet(set)
    
    return range.location == NSNotFound
  }
  
  /// 判断字符串是否全是字母组成
  /// 若为全字母组成，返回true，否则返回false
  public func hyb_isOnlyLetters() ->Bool {
    let set = NSCharacterSet.letterCharacterSet().invertedSet
    let range = (self as NSString).rangeOfCharacterFromSet(set)
    
    return range.location == NSNotFound
  }
  
  /// 判断字符串是否全是字母和数字组成
  /// 若为全字母和数字组成，返回true，否则返回false
  public func hyb_isAlphanum() ->Bool {
    let set = NSCharacterSet.alphanumericCharacterSet().invertedSet
    let range = (self as NSString).rangeOfCharacterFromSet(set)
    
    return range.location == NSNotFound
  }
  
  // MARK: Validation API
  
  /// 判断字符串是否是有效的邮箱格式
  /// 若为有效的邮箱格式，返回true，否则返回false
  public func hyb_isValidEmail() ->Bool {
    let regEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"
    let predicate = NSPredicate(format: "SELF MATCHES %@", regEx)
    
    return predicate.evaluateWithObject(self)
  }
}