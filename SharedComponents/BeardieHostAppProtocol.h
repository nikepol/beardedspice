//
//  BeardieHostAppProtocol.h
//  BeardieControllers
//
//  Created by Roman Sokolov on 05.03.16.
//  Copyright © 2016 Beardie. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol BeardieHostAppProtocol

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
