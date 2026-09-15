//
//  BSMediaStrategyEnableButton.h
//  Beardie
//
//  Created by Roman Sokolov on 08.08.15.
//  Copyright (c) 2015 Beardie. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface BSMediaStrategyEnableButton : NSButton{
    
    __weak NSTableView *_tableView;
}

- (id)initWithTableView:(NSTableView *)tableView;
@end
