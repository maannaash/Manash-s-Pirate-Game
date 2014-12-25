//
//  Factory.m
//  Manash's Pirate Game
//
//  Created by Manash Taunk on 12/20/14.
//  Copyright (c) 2014 Manash Taunk. All rights reserved.
//

#import "Factory.h"
#import "Tile.h"

@implementation Factory


-(NSArray *) tiles{
    
    Tile *tile1 = [[Tile alloc] init];
    tile1.story = @"Captain, we need a fearless leader such as you to undertake a voyage. You must stop the evil pirate Boss before he steals any more plunder. Would you like a blunted sword to get started?";
    tile1.backgroundImage = [UIImage imageNamed:@"pirate_map2"];
    
    Weapon *bluntedSword = [[Weapon alloc] init];
    bluntedSword.name = @"Blunted Sword";
    bluntedSword.damage  = 7;
    
    tile1.weapon = bluntedSword;
    tile1.actionButtonName = @"Take a Sword";
    
    
    
    
    Tile *tile2 = [[Tile alloc] init];
    tile2.story = @"You have come across an armory. Would you like to upgrade your armor to steel armor?";
    tile2.backgroundImage = [UIImage imageNamed:@"armor1"];
    
    Armor *steelArmor = [[Armor alloc] init];
    steelArmor.name = @"Steel Armor";
    steelArmor.health = 7;
    
    tile2.armor = steelArmor;
    tile2.actionButtonName = @" Take Steel Armor";
    
    
    
    
    Tile *tile3 = [[Tile alloc] init];
    tile3.story = @"A mysterious dock appears on the horizon. Should we stop and ask for directions?";
    tile3.backgroundImage = [UIImage imageNamed:@"Pirate_Dock"];
    tile3.actionButtonName = @"Stop at the Dock";
    tile3.healthEffect = 17;
    
    
    
    NSArray *firstColumn = [[NSArray alloc]initWithObjects:tile1,tile2,tile3, nil];
    
    Tile *tile4 = [[Tile alloc] init];
    tile4.story = @"You have found a parrot can be used in your armor slot! Parrots are a great defender and are fiercly loyal to their captain.";
    tile4.backgroundImage  = [UIImage imageNamed:@"parrot2"];
    tile4.actionButtonName = @"Adopt Parrot";
    Armor *parrotArmor = [[Armor alloc] init];
    parrotArmor.health = 20;
    parrotArmor.name = @"Parrot Armor";
    tile4.armor = parrotArmor;
    
    

    Tile *tile5 = [[Tile alloc] init];
    tile5.story = @"You have stumbled upon a cache of pirate weapons. Would you like to upgrade to a pistol?";
    tile5.backgroundImage = [UIImage imageNamed:@"Weapon1"];
    tile5.actionButtonName = @"Take pistol";
    Weapon *pistolWeapon = [[Weapon alloc] init];
    pistolWeapon.name = @"Pistol";
    pistolWeapon.damage = 12;
    tile5.weapon = pistolWeapon;
    
    

    Tile *tile6 = [[Tile alloc] init];
    tile6.story = @"You have been captured by pirates and are ordered to walk the plank";
    tile6.backgroundImage = [UIImage imageNamed:@"pirate-plank"];
    tile6.actionButtonName = @"Show no fear!";
    tile6.healthEffect = -22;
    
    
    
    NSArray *secondColumn = [[NSArray alloc] initWithObjects:tile4,tile5,tile6, nil];

    Tile *tile7 = [[Tile alloc] init];
    tile7.story = @"You sight a pirate battle off the coast";
    tile7.backgroundImage = [UIImage imageNamed:@"Ship-Battle"];
    tile7.actionButtonName = @"Fight those scum!";
    tile7.healthEffect = -15;
    
    
    
    Tile *tile8 = [[Tile alloc] init];
    tile8.story = @"The legend of the deep, the mighty kraken appears";
    tile8.backgroundImage = [UIImage imageNamed:@"octopus"];
    tile8.actionButtonName = @"Abandon Ship";
    tile8.healthEffect = -46;
    
    
    
    Tile *tile9 = [[Tile alloc] init];
    tile9.story = @"You stumble upon a hidden cave of pirate treasurer";
    tile9.backgroundImage = [UIImage imageNamed:@"tresure"];
    tile9.actionButtonName = @"Take Treasurer";
    tile9.healthEffect = 20;
    
    
    
    
    NSArray *thirdColumn = [[NSArray alloc] initWithObjects:tile7,tile8,tile9, nil];
    
    Tile *tile10 = [[Tile alloc] init];
    tile10.story = @"A group of pirates attempts to board your ship";
    tile10.backgroundImage = [UIImage imageNamed:@"attack"];
    tile10.actionButtonName = @"Repel the invaders";
    tile10.healthEffect = 15;
    
    
    
    
    Tile *tile11 = [[Tile alloc] init];
    tile11.story = @"In the deep of the sea many things live and many things can be found. Will the fortune bring help or ruin?";
     tile11.backgroundImage = [UIImage imageNamed:@"treasure1"];
    tile11.actionButtonName = @"Swim deeper";
    tile11.healthEffect = -7;
    
    
    

    Tile *tile12 = [[Tile alloc] init];
    tile12.story = @"Your final faceoff with the fearsome pirate boss";
    tile12.backgroundImage = [UIImage imageNamed:@"pirate_boss"];
    tile12.actionButtonName = @"Fight!";
    tile12.healthEffect = -17;
    
    
    
    NSArray *fourthColumn = [[NSArray alloc] initWithObjects:tile10,tile11,tile12, nil];
    
    NSArray *tiles = [[NSArray alloc] initWithObjects:firstColumn,secondColumn,thirdColumn,fourthColumn, nil];
    
    return tiles;
    
}


-(Character *) newCharacter{
    Character *character = [[Character alloc] init];
    character.health = 100;
    
    Armor *armor = [[Armor alloc] init];
    armor.name = @"Cloak";
    armor.health = 5;
    character.armor = armor;
    
    Weapon *weapon = [[Weapon alloc] init];
    weapon.name = @"Fists";
    weapon.damage = 10;
    character.weapon = weapon;
    
    
    return character;
    
}

-(Boss *) newBoss{
    
    Boss *boss = [[Boss alloc] init];
    boss.health = 65;
    return boss;
    
}


@end
