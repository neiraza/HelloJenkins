//
//  AppDelegate.h
//  HelloJenkins
//
//  Created by 徹 小栗 on 11/12/23.
//  Copyright (c) 2011年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RootViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>
{
    RootViewController *rootViewController_;
}
@property (strong, nonatomic) UIWindow *window;

@end
