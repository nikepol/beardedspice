//
//  BeardieControllers.h
//  BeardieControllers
//
//  Created by Roman Sokolov on 05.03.16.
//  Copyright © 2016 Beardie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BeardieControllersProtocol.h"

// This object implements the protocol which we have defined. It provides the actual behavior for the service. It is 'exported' by the service to make it available to the process hosting the service over an NSXPCConnection.
@interface BeardieControllers : NSObject <BeardieControllersProtocol>

@property (weak) NSXPCConnection *connection;

@end
