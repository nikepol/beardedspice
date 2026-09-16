//
//  BSStrategiesPreferencesViewController.h
//  BeardieMusic
//
//  Created by Roman Sokolov on 22.05.17.
//  Copyright (c) 2017 GPL v3 http://www.gnu.org/licenses/gpl.html
//

#import <Cocoa/Cocoa.h>
#import "MASPreferencesViewController.h"
#import "Shortcut.h"

/////////////////////////////////////////////////////////////////////////
#pragma mark Notifications

extern NSString *const BSStrategiesPreferencesNativeAppChangedNoticiation;

/////////////////////////////////////////////////////////////////////////
#pragma mark Defaults Keys

extern NSString *const BeardieMusicActiveControllers;
extern NSString *const BeardieMusicActiveNativeAppControllers;

extern NSString *const BeardieMusicImportExportLastDirectory;

/////////////////////////////////////////////////////////////////////////
#pragma mark - BSStrategiesPreferencesViewController

@interface BSStrategiesPreferencesViewController : NSViewController <MASPreferencesViewController, NSTableViewDataSource, NSTableViewDelegate>
{
    // array of MediaControllerObject used to drive the view
    NSArray *mediaControllerObjects;
    
    // dictionary of user preferences
    NSMutableDictionary *userStrategies;
    NSMutableDictionary *userNativeApps;
    
    NSString *_toolTipForCustomStrategy;
}

@property (assign) IBOutlet NSTableView *strategiesView;
@property (weak) IBOutlet NSView *firstResponderView;

@property (readonly) BOOL selectedRowAllowExport;
@property (readonly) BOOL selectedRowAllowRemove;
@property (readonly) BOOL importExportPanelOpened;


/////////////////////////////////////////////////////////////////////////
#pragma mark Actions

- (IBAction)clickExport:(id)sender;
- (IBAction)clickImport:(id)sender;
- (IBAction)clickRemove:(id)sender;


@end
