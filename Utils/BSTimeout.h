//
//  BSTimeout.h
//  BeardieMusic
//
//  Created by Roman Sokolov on 12.02.16.
//  Copyright © 2016 BeardieMusic. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BSTimeout : NSObject

+ (id)timeoutWithInterval:(NSTimeInterval)interval;

- (BOOL)reached;

@end
