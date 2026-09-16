//
//  BSLaunchAtLogin.h
//  BeardieMusic
//
//  Created by Roman Sokolov on 21.06.15.
//  Copyright (c) 2015 BeardieMusic. All rights reserved.
//

#import <Foundation/Foundation.h>

/////////////////////////////////////////////////////////////////////
#pragma mark - BSLaunchAtLogin
/////////////////////////////////////////////////////////////////////

/**
 Manipulation of system preferences user login item.
 */
@interface BSLaunchAtLogin : NSObject

/////////////////////////////////////////////////////////////////////
#pragma mark Properties and public methods
/////////////////////////////////////////////////////////////////////

+ (BOOL)isLaunchAtStartup;
+ (void)launchAtStartup:(BOOL)shouldBeLaunchAtLogin;

@end
