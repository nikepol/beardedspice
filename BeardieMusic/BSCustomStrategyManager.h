//
//  BSCustomStrategyManager.h
//  BeardieMusic
//
//  Created by Roman Sokolov on 25.06.16.
//  Copyright © 2016 BeardieMusic. All rights reserved.
//

#import <Foundation/Foundation.h>

@class BSMediaStrategy;

/**
 FIXME
 */
extern NSString *BSCStrategyChangedNotification;

@interface BSCustomStrategyManager : NSObject

+ (BSCustomStrategyManager *)singleton;


- (BOOL)importFromPath:(NSString *)path;

- (BOOL)importFromUrl:(NSURL *)url;

- (BOOL)exportStrategy:(BSMediaStrategy *)strategy toFolder:(NSURL *)folderURL;

- (BOOL)removeStrategy:(BSMediaStrategy *)strategy;

@end
