//
//  AdvansedPreferencesViewController.m
//  Beardie
//
//  Created by Roman Sokolov on 13.03.15.
//  Copyright (c) 2015 Tyler Rhodes / Jose Falcon. All rights reserved.
//

#import "ShortcutsPreferencesViewController.h"
#import "BSSharedDefaults.h"

@implementation ShortcutsPreferencesViewController

- (id)init
{
    self = [super initWithNibName:@"ShortcutsPreferencesView" bundle:nil];
    if (self) {
    }
    return self;
}

- (void)awakeFromNib
{
    // associate view with userdefaults
    [self.playPauseShortcut setAssociatedUserDefaultsKey:BeardiePlayPauseShortcut];
    [self.nextTrackShortcut setAssociatedUserDefaultsKey:BeardieNextTrackShortcut];
    [self.previousTrackShortcut setAssociatedUserDefaultsKey:BeardiePreviousTrackShortcut];
    [self.setActiveTabShortcut setAssociatedUserDefaultsKey:BeardieActiveTabShortcut];
    [self.favoriteShortcut setAssociatedUserDefaultsKey:BeardieFavoriteShortcut];
    [self.notificationShortcut setAssociatedUserDefaultsKey:BeardieNotificationShortcut];
    [self.activatePlayingTabShortcut setAssociatedUserDefaultsKey:BeardieActivatePlayingTabShortcut];
    [self.playerNextShortcut setAssociatedUserDefaultsKey:BeardiePlayerNextShortcut];
    [self.playerPreviousShortcut setAssociatedUserDefaultsKey:BeardiePlayerPreviousShortcut];
}

- (NSString *)identifier
{
    return @"ShortcutsPreferences";
}

- (NSImage *)toolbarItemImage
{
    return [NSImage imageNamed:@"toolbarShortcuts"];
}

- (NSString *)toolbarItemLabel
{
    return NSLocalizedString(@"Shortcuts", @"Toolbar item name for the Shortcuts preference pane");
}

- (NSView *)initialKeyView{
    
    return self.playPauseShortcut;
}


@end
