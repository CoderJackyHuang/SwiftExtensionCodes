//
//  UIView+HYBExtension.swift
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
public extension UIView {
  // MARK: Frame API
  
  /// Get/set self.frame.origin
  var hyb_origin: CGPoint {
    get { return self.frame.origin }
    set { self.frame.origin = newValue }
  }
  
  // Get/set self.frame.origin.x
  var hyb_originX: CGFloat {
    get { return self.hyb_origin.x }
    set { self.hyb_origin.x = newValue }
  }
  
  // Get/set self.frame.origin.y
  var hyb_originY: CGFloat {
    get { return self.hyb_origin.y }
    set { self.hyb_origin.y = newValue }
  }

  /// Get/set self.frame.size.width
  var hyb_width: CGFloat {
    get { return self.frame.size.width }
    set { self.frame.size.width = newValue }
  }
  
  /// Get/set self.frame.size.height
  var hyb_height: CGFloat {
    get { return self.frame.size.height }
    set { self.frame.size.height = newValue }
  }
  
  /// Get/set self.frame.size
  var hyb_size: CGSize {
    get { return self.frame.size }
    set { self.frame.size = newValue }
  }

  /// Get/set self.frame.size.width + self.frame.origin.x
  var hyb_rightX: CGFloat {
    get { return self.frame.size.width + self.frame.origin.x }
    set { self.hyb_originX = newValue - self.hyb_width }
  }

  /// Get/set self.frame.size.height + self.frame.origin.y
  var hyb_bottomX: CGFloat {
    get { return self.frame.size.height + self.frame.origin.y }
    set { self.hyb_originY = newValue - self.hyb_height }
  }
  
  /// Get/set self.center.x
  var hyb_centerX: CGFloat {
    get { return self.center.x }
    set { self.center.x = newValue }
  }
  
  /// Get/set self.center.y
  var hyb_centerY: CGFloat {
    get { return self.center.y }
    set { self.center.y = newValue }
  }

  /// Get/set self.center
  var hyb_center: CGPoint {
    get { return self.center }
    set { self.center = newValue }
  }
}