//
//  AppDelegate.m
//  AndrewTestOne
//
//  Created by Dave Albert on 05/02/2013.
//  Copyright (c) 2013 Dave Albert. All rights reserved.
//

#import "AppDelegate.h"

#import "ViewController.h"

@implementation AppDelegate

@synthesize window = _window;
@synthesize viewController = _viewController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
  NSLog(@"didFinishLaunchingWithOptions 1");
  self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
  // Override point for customization after application launch.
  self.viewController = [[ViewController alloc] initWithNibName:@"ViewController" bundle:nil];
  self.window.rootViewController = self.viewController;
  [self.window makeKeyAndVisible];
  
  NSLog(@"didFinishLaunchingWithOptions 2");
  return YES;
}



@end
