//
//  main.m
//  RandomItems
//
//  Created by Albert Saucedo on 9/15/14.
//  Copyright (c) 2014 Albert Saucedo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Item.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSMutableArray *items = [NSMutableArray new];

        //Send the message addObject: to the NSMutableArray pointed to by the variable items, passing a string each time
        [items addObject:@"One"];
        [items addObject:@"Two"];
        [items addObject:@"Three"];

        //Send another message, insertObjectAtIndex:, to that same array object
        [items insertObject:@"Zero" atIndex:0];

        //For every item inthe item array
        for (NSString *item in items) {
            // Log the desc of the item
            NSLog(@"For Item %@", item);
        }

        Item *item = [Item new];

        // This creates an NSString, "Red Sofa" and gives it to the BNRItem

        [item setItemName:@"Red Sofa"];
        //or
        item.itemName = @"Red Sofa";

        // This creates an NSString, "A1B1" and gives it to the BNRItem

        [item setSerialNumber:@"A1B1"];
        //or
        item.serialNumber = @"A1B1C";

        // This creates an Int, 100 and gives it to the BNRItem

        [item setValueInDollars:100];
        //or
        item.valueInDollars = 100;

        // This creates an Int, 100 and gives it to the BNRItem


        NSLog(@"%@ %@ %@ %d", [item itemName], [item dateCreated], [item serialNumber], [item valueInDollars]);

        //or

        NSLog(@"%@ %@ %@ %d", item.itemName, item.dateCreated, item.serialNumber, item.valueInDollars);

        //or with accessors

        // The %@ token is replaced with the result of sending the description message to the corresponding argument”
        NSLog(@"%@", item);

        //Destroy the mustable array object
        items = nil;
    }
    return 0;
}

