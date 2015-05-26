# SlideMenu3D

[![CI Status](http://img.shields.io/travis/hunk/SlideMenu3D.svg?style=flat)](https://travis-ci.org/hunk/SlideMenu3D)
[![Version](https://img.shields.io/cocoapods/v/SlideMenu3D.svg?style=flat)](http://cocoapods.org/pods/SlideMenu3D)
[![License](https://img.shields.io/cocoapods/l/SlideMenu3D.svg?style=flat)](http://cocoapods.org/pods/SlideMenu3D)
[![Platform](https://img.shields.io/cocoapods/p/SlideMenu3D.svg?style=flat)](http://cocoapods.org/pods/SlideMenu3D)

## 
A small class for lateral menu with 3D effect, support tap gesture when el menu is open and tap gesture all time, support device orientation.

[![Video](http://img.youtube.com/vi/1UyrVDaNDIg/0.jpg)](https://www.youtube.com/watch?v=1UyrVDaNDIg)

## Installation

SlideMenu3D is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "SlideMenu3D"
```

Or download the project and export `HKSlideMenu3DController.{h/m}` in your project

## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.


Import HKSlideMenu3DController class in you view

```objective-c
#import <HKSlideMenu3DController.h>
```

retain the class

```objective-c
@property (strong, nonatomic)  HKSlideMenu3DController *slideMenuVC;`
```

now init the class y set UIViewControlls for menu y center view

```objective-c
self.slideMenuVC = [[HKSlideMenu3DController alloc] init];
self.slideMenuVC.view.frame =  [[UIScreen mainScreen] bounds];
self.slideMenuVC.menuViewController = myMenuViewController;
self.slideMenuVC.mainViewController = myMianViewController;
```

also you can set background image

```objective-c
self.slideMenuVC.backgroundImage = [UIImage imageNamed:@"cloud"];
```

you can change the contentMode for the image

```objective-c
self.slideMenuVC.backgroundImageContentMode = UIViewContentModeTopLeft;
```
for open and close menu call toogleMenu, this function determines the current state of the menu

```objective-c
[self.slideMenuVC toggleMenu];
```

for replace the mainView, only need set a new `UIViewController`

```objective-c
self.slideMenuVC.mainViewController = anotherViewController;
```

## Enable/disable Pan Gesture Recognizer

```objective-c
[self.slideMenuVC setEnablePan:true];
[self.slideMenuVC setEnablePan:false];
```

## Notes
After version 0.1.2, we add hierarchy for container’s view, the rotation depends of you `mainViewController`.

set you orientations in your `UIViewController` example:

```objective-c
- (NSUInteger)supportedInterfaceOrientations{
    return UIInterfaceOrientationMaskLandscapeLeft | UIInterfaceOrientationMaskPortrait;
}
```

if you need force rotate for specific `UIViewController` check `HKAppDelegate.m` method `setSecondView`

if you `mainViewController` is a `UINavigationController` and you want your `UIViewController` handle the rotation values, you must create a subclass of `UINavigationController` just like `HKRotationNavigationController` in example project


## Images

images of menu by Steven Kuiper https://www.iconfinder.com/Verzint


## Author

@hunk, ing.edgar@gmail.com

## License

SlideMenu3D is available under the MIT license. See the LICENSE file for more info.
