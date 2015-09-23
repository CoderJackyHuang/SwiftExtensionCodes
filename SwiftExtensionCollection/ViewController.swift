//
//  ViewController.swift
//  SwiftExtensionCollection
//
//  Created by huangyibiao on 15/9/22.
//  Copyright © 2015年 huangyibiao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  var timer: NSTimer?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let string = "  就要去"
    print(string.hyb_length() == 5)
    print(string.hyb_trimLeft() == "就要去")
    
    let str = "  \n  测试"
    print(str.hyb_trimLeft())
    print(str.hyb_trimLeft(true))
    
    print("  ".hyb_trim().hyb_length() == 0)
    print("  \n ".hyb_trimLeft(true).hyb_length() == 0)
    
    print("right ----------")
    print(" 去掉右边的空格   ".hyb_trimRight().hyb_length() == " 去掉右边的空格   ".hyb_length() - 4)
    print("  ".hyb_trimRight().hyb_length() == 0)
    print("  \n  ".hyb_trimRight().hasSuffix("\n"))
    print("  \n  ".hyb_trimRight(true).hyb_length() == 0)
    print("".hyb_trimRight().hyb_length() == 0)
    
    print("after delay 4")
    //    NSObject.hyb_delay(4) { () -> Void in
    //      print("4 seconds...")
    //    }
    
    //NSTimer.hyb_schedule(NSTimeInterval(0.1), repeats: true) { () -> Void in
    //      print("111")
    //    }
    
    //    NSTimer.hyb_schdule(1, count: 1) { () -> Void in
    //      print("hyb_schdule(1, count: 2)")
    //    }
    
//    NSTimer.hyb_schdule(count: nil) { () -> Void in
//      print("nil count")
//    }
    
    // 可以省略
    NSTimer.hyb_schdule(count: 2) {
      print("hehe")
    }
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  
}

