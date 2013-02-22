//
//  AppDelegate.m
//  Andrew4
//
//  Created by Dave Albert on 21/02/2013.
//  Copyright (c) 2013 Dave Albert. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
  
  RootViewController *rootView = [[RootViewController alloc] initWithNibName:@"RootViewController" bundle:nil];
  self.navController = [[UINavigationController alloc] initWithRootViewController:rootView];
  self.window.rootViewController = self.navController;
  
  // Override point for customization after application launch.
  self.window.backgroundColor = [UIColor whiteColor];
  [self.window makeKeyAndVisible];
  return YES;
}

@end
