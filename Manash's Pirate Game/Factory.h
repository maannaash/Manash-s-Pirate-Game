//
//  Factory.h
//  Manash's Pirate Game
//
//  Created by Manash Taunk on 12/20/14.
//  Copyright (c) 2014 Manash Taunk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Character.h"
#import "Boss.h"

@interface Factory : NSObject

-(NSArray *) tiles;
-(Character *) newCharacter;
-(Boss *) newBoss;

@end
