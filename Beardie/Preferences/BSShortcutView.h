//
//  BSShortcutView.h
//  Beardie
//
//  Created by Roman Sokolov on 09.08.15.
//  Copyright (c) 2015 Beardie. All rights reserved.
//

#import "MASShortcutView.h"

@class MASShortcut;

@interface BSShortcutView : MASShortcutView{
    
    BOOL _firstResponder;
    MASShortcut *_savedShortcut;
}

@end
