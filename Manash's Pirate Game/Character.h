//
//  Character.h
//  Manash's Pirate Game
//
//  Created by Manash Taunk on 12/21/14.
//  Copyright (c) 2014 Manash Taunk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Armor.h"
#import "Weapon.h"

@interface Character : NSObject

@property (strong, nonatomic) Armor *armor;
@property (strong, nonatomic) Weapon *weapon;
@property (nonatomic) int health;
@property (nonatomic) int damage;



@end
