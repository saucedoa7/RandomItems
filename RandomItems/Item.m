//
//  Item.m
//  RandomItems
//
//  Created by Albert Saucedo on 9/16/14.
//  Copyright (c) 2014 Albert Saucedo. All rights reserved.
//

#import "Item.h"

@implementation Item

#pragma mark (0) Let’s form some simple rules for initializers from these ideas.

// 1. A class inherits all initializers from its superclass and can add as many as it wants for its own purposes.
// 2. Each class picks one initializer as its designated initializer.
// 3. The designated initializer calls the superclass’s designated initializer (directly or indirectly) before doing anything else.
// 4. Any other initializers call the class’s designated initializer (directly or indirectly).
// 5. If a class declares a designated initializer that is different from its superclass, the superclass’s designated initializer must be overridden to call the new designated initializer (directly or indirectly).


#pragma mark (8) Implementing the designated initializer

-(instancetype)initWithItemName:(NSString *)name
                   serialNumber:(NSString *)sNumber
                 valueInDollars:(int)value
                         attack:(int)attackpt
                        defence:(int)defencept{

    //Call the superclass's designated initializer
    self = [super init];

    //Did the superclass's designated initializer succeed?
    if (self) {

        //Give the instance variables initial values
        _itemName = name;
        _serialNumber = sNumber;
        _valueInDollars = value;
        _attack = attackpt;
        _defence = defencept;

        //Set _dateCreated to the current date and time
        _dateCreated = [NSDate new];
    }

    return self;
}

#pragma mark (9) Call the designated initializer

//passing the information it is given for the _itemName and default values for the other arguments.”
-(instancetype)initWithItemName:(NSString *)name{
    return [self initWithItemName:name
                     serialNumber:@""
                   valueInDollars:0
                           attack:0
                          defence:0];
}

#pragma mark (10) Override init to call initWithItemName

//passing a default value for the item’s name
-(id)init{
    return [self initWithItemName:@"Item"];
}

#pragma mark (3) Each setter method sets the instance variable to whatever is passed in as an argument, and each getter method returns the value of the instance variable

//aka Accessor Methods

-(void)setItemName:(NSString *)str{
    _itemName = str;
}
-(NSString *)itemName{
    return _itemName;
}

-(void)setSerialNumber:(NSString *)str{
    _serialNumber = str;
}
-(NSString *)serialNumber{
    return _serialNumber;
}

-(void)setValueInDollars:(int)value{
    _valueInDollars = value;
}
-(int)valueInDollars{
    return _valueInDollars;
}

-(void)setAttack:(int)a{
    _attack = a;
}
-(int)attack{
    return _attack;
}

-(void)setDefence:(int)d{
    _defence = d;
}
-(int)defence{
    return _defence;
}

-(NSDate *)dateCreated{
    return _dateCreated;
}

#pragma mark (5) invoking accessors (via dot syntax). Override the description method of the super class aka NSObject


// “Note what you are not doing here: you are not passing the instance variables by name (e.g.., _itemName).”

-(NSString *)description{
    NSString *stringDesc = [[NSString alloc] initWithFormat:@"%@ (%@): worth $%d, Attack %d & Defence %d recorded on %@",
                            self.itemName,
                            self.serialNumber,
                            self.valueInDollars,
                            self.attack,
                            self.defence,
                            self.dateCreated];
    return stringDesc;
}

#pragma mark (12) Implement randomItem to create, configure, and return a BNRItem instance.

+(instancetype)randomItem{
    // Creat and immutable array of three adjectives
    NSArray *randomAdjectives = @[@"Fluffy", @"Wild", @"Shiny"];

    //Create an immutable array of three nouns
    NSArray *randomNouns = @[@"Bear", @"Lion", @"Tiger"];

    //Get the index of a random noun/adjective from an array

    NSInteger randomAdjectiveIndex = arc4random() % [randomAdjectives count];
    NSInteger randomNounIndex = arc4random() % [randomNouns count];
    int randomAttack = (arc4random() % 30)*100;
    int randomDefence = (arc4random() %30)*100;

    NSString *randomName = [NSString stringWithFormat:@"A %@ %@ appeared", [randomAdjectives objectAtIndex:randomAdjectiveIndex],[randomNouns objectAtIndex:randomNounIndex]];

    int randomValue = arc4random() % 100;

    NSString *randomSerialNumber = [NSString stringWithFormat:@"S/N: %c%c%c%c%c", '0' + arc4random() % 10,
                                                                                  'A' + arc4random() % 26,
                                                                                  '0' + arc4random() % 10,
                                                                                  'A' + arc4random() % 26,
                                                                                  '0' + arc4random() % 10];

    Item *newItem = [[self alloc]initWithItemName:randomName
                                     serialNumber:randomSerialNumber
                                   valueInDollars:randomValue
                                           attack:randomAttack
                                          defence:randomDefence];

    return newItem;
}


@end
