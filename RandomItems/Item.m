//
//  Item.m
//  RandomItems
//
//  Created by Albert Saucedo on 9/16/14.
//  Copyright (c) 2014 Albert Saucedo. All rights reserved.
//

#import "Item.h"

@implementation Item

#pragma mark            /* Let’s form some simple rules for initializers from these ideas.*/

// 1. A class inherits all initializers from its superclass and can add as many as it wants for its own purposes.
// 2. Each class picks one initializer as its designated initializer.
// 3. The designated initializer calls the superclass’s designated initializer (directly or indirectly) before doing anything else.
// 4. Any other initializers call the class’s designated initializer (directly or indirectly).
// 5. If a class declares a designated initializer that is different from its superclass, the superclass’s designated initializer must be overridden to call the new designated initializer (directly or indirectly).

-(instancetype)initWithItemName:(NSString *)name serialNumber:(NSString *)sNumber valueInDollars:(int)value{

    //Call the superclass's designated initializer
    self = [super init];

    //Did the superclass's designated initializer succeed?
    if (self) {

        //Give the instance variables initial values
        _itemName = name;
        _serialNumber = sNumber;
        _valueInDollars = value;

        //Set _dateCreated to the current date and time
        _dateCreated = [NSDate new];
    }

    return self;
}

-(instancetype)initWithItemName:(NSString *)name{
    return [self initWithItemName:name
                     serialNumber:@""
                   valueInDollars:0];
}

-(id)init{
    return [self initWithItemName:@"Item"];
}

#pragma mark (3) Each setter method sets the instance variable to whatever is passed in as an argument, and each getter method returns the value of the instance variable

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

-(void)setValueInDollars:(int)v{
    _valueInDollars = v;
}
-(int)valueInDollars{
    return _valueInDollars;
}

-(NSDate *)dateCreated{
    return _dateCreated;
}

#pragma mark () invoking accessors (via dot syntax)

-(NSString *)description{
    NSString *stringDesc = [[NSString alloc] initWithFormat:@"%@ (%@): worth $%d, recorded on %@",
                            self.itemName,
                            self.serialNumber,
                            self.valueInDollars,
                            self.dateCreated];
    return stringDesc;
}

@end
