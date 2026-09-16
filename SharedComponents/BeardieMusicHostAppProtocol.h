//
//  BeardieMusicHostAppProtocol.h
//  BeardieMusicControllers
//
//  Created by Roman Sokolov on 05.03.16.
//  Copyright © 2016 BeardieMusic. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol BeardieMusicHostAppProtocol

- (void)playPauseToggle;
- (void)nextTrack;
- (void)previousTrack;

- (void)activeTab;
- (void)favorite;
- (void)notification;
- (void)activatePlayingTab;

- (void)playerNext;
- (void)playerPrevious;

- (void)volumeUp;
- (void)volumeDown;
- (void)volumeMute;

- (void)headphoneUnplug;

@end
