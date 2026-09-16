//
//  AdvansedPreferencesViewController.m
//  BeardieMusic
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
    [self.playPauseShortcut setAssociatedUserDefaultsKey:BeardieMusicPlayPauseShortcut];
    [self.nextTrackShortcut setAssociatedUserDefaultsKey:BeardieMusicNextTrackShortcut];
    [self.previousTrackShortcut setAssociatedUserDefaultsKey:BeardieMusicPreviousTrackShortcut];
    [self.setActiveTabShortcut setAssociatedUserDefaultsKey:BeardieMusicActiveTabShortcut];
    [self.favoriteShortcut setAssociatedUserDefaultsKey:BeardieMusicFavoriteShortcut];
    [self.notificationShortcut setAssociatedUserDefaultsKey:BeardieMusicNotificationShortcut];
    [self.activatePlayingTabShortcut setAssociatedUserDefaultsKey:BeardieMusicActivatePlayingTabShortcut];
    [self.playerNextShortcut setAssociatedUserDefaultsKey:BeardieMusicPlayerNextShortcut];
    [self.playerPreviousShortcut setAssociatedUserDefaultsKey:BeardieMusicPlayerPreviousShortcut];
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
