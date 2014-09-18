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

}

#pragma mark (#) Designated initializer for Item

-(instancetype)initWithItemName:(NSString *)name
                   serialNumber:(NSString *)sNumber
                 valueInDollars:(int)value;


-(instancetype)initWithItemName:(NSString *)name;

#pragma mark (2) Create setters and getters

-(void)setItemName:(NSString *)str;
-(NSString *)itemName;

-(void)setSerialNumber:(NSString *)str;
-(NSString *)serialNumber;

-(void)setValueInDollars:(int)v;
-(int)valueInDollars;

-(NSDate *)dateCreated;

@end
