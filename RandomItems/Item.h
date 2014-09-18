//
//  Item.h
//  RandomItems
//
//  Created by Albert Saucedo on 9/16/14.
//  Copyright (c) 2014 Albert Saucedo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Item : NSObject {

#pragma mark (1) iVars

    NSString *_itemName;
    NSString *_serialNumber;
    int _valueInDollars;
    NSDate *_dateCreated;
    int _attack;
    int _defence;

}

#pragma mark (11) Declare a class method that will create a random item

+(instancetype)randomItem;

#pragma mark (7) Designated initializer for Item

-(instancetype)initWithItemName:(NSString *)name
                   serialNumber:(NSString *)sNumber
                 valueInDollars:(int)value
                         attack:(int)attackpt
                        defence:(int)defencept;


-(instancetype)initWithItemName:(NSString *)name;

#pragma mark (2) Create setters and getters

-(void)setItemName:(NSString *)str;
-(NSString *)itemName;

-(void)setSerialNumber:(NSString *)str;
-(NSString *)serialNumber;

-(void)setValueInDollars:(int)v;
-(int)valueInDollars;

-(void)setAttack:(int)a;
-(int)attack;

-(void)setDefence:(int)d;
-(int)defence;

-(NSDate *)dateCreated;
@end
