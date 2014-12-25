//
//  Tile.h
//  Manash's Pirate Game
//
//  Created by Manash Taunk on 12/20/14.
//  Copyright (c) 2014 Manash Taunk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "Armor.h"
#import "Weapon.h"


@interface Tile : NSObject

@property (strong,nonatomic) NSString *story;
@property (strong,nonatomic) UIImage *backgroundImage;
@property (strong,nonatomic) NSString *actionButtonName;
@property (strong, nonatomic) Armor *armor;
@property (strong, nonatomic) Weapon *weapon;
@property (nonatomic) int healthEffect;


@end
