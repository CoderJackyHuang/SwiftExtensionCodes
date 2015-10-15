# SwiftExtensionCodes
An extension of swift types, provided convenience api extension to use.

##Introduce
This is an very useful swift extensions, with it, we could use less code to finish the same 
thing.

##Warning
In order to solve coflict, every extension api has the same prefix hyb_.
This is shorthand of my Chinese name.So don't worry about it.

##Install
It supports cocoapods.just add to podfile as bellow:

```
pod 'SwiftExtensionCodes', '~> 0.1.1'
```

##What's New in v0.1.1
In v0.1.1, add UIViewController extension for show alert view and action sheet conveniencely.
```
// We can specify the sequence of ok and cancel button. 
self.hyb_okCancelDirection = .CancelOk 
// only title, ok button and cancel button
self.hyb_showAlert("cancel, ok") 

// common use
self.hyb_showActionSheet("Thanks", message: "How to call with hyb_showActionSheet", cancel: "Cancel", destructive: "Destructive", otherTitles: "Beijing", "ShenZhen") { (index) -> Void in
   print(index)
}
```

##How to use
```
NSTimer.hyb_schdule(count: 2) {
  print("hehe")
}
```
Watching the api, is it convenience? Yes,it's useful.

for more information, just download and see it.

##Next
I will always maintain it, and will add more and more extensions in the future.

##Author 
Want to know more about me?

Personal blog: http://www.hybblog.com/
Email: huangyibiao520@163.com

##Follow Me
![image](https://github.com/CoderJackyHuang/IOSCallJsOrJsCallIOS/blob/master/wx.jpg)

##License
This software is under MIT license.
