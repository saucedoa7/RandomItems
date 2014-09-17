//
//  Item.m
//  RandomItems
//
//  Created by Albert Saucedo on 9/16/14.
//  Copyright (c) 2014 Albert Saucedo. All rights reserved.
//

#import "Item.h"

@implementation Item

//  Each setter method sets the instance variable to whatever is passed in as an argument, and each getter method returns the value of the instance variable

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


//invoking accessors (via dot syntax).

-(NSString *)description{
    NSString *stringDesc = [[NSString alloc] initWithFormat:@"%@ (%@): worth $%d, recorded on %@",
                            self.itemName,
                            self.serialNumber,
                            self.valueInDollars,
                            self.dateCreated];
    return stringDesc;
}

@end
