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

        //For every item in the item array
        for (NSString *item in items) {
            // Log the desc of the item
            NSLog(@"For Item %@", item);
        }

#pragma mark (4) create an instance of BNRItem and log its instance variables to the console (First Options). Dot notation is prefered

        /*
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
         */

#pragma mark (6) Chain of Initializers

        //“ replace the statement that prints out the instance variables individually with a statement that relies on BNRItem’s implementation of description”

//        Item *itemWithFullDescription = [[Item alloc] initWithItemName:@"Red Sofa"
//                                       serialNumber:@"A1b1"
//                                     valueInDollars:100];

        // The %@ token is replaced with the result of sending the description message to the corresponding argument”
//        NSLog(@"Item -> %@", itemWithFullDescription);

//        Item *itemWithNAme = [[Item alloc] initWithItemName:@"Blue Sofa"];
//        NSLog(@"Item W/ Name -> %@", itemWithNAme);

        //“you must override init in BNRItem to link to BNRItem’s designated initializer.”
//        Item *itemWithNoNAme = [Item new];
//        NSLog(@"Item W/o Name -> %@", itemWithNoNAme);


#pragma mark (13) Fill the items array with 10 randomly-created instances of BNRItem.

        //Then you will loop through the array and log each item

        for (int i; i < 10; i++) {
            Item *item = [Item randomItem];
            [items addObject:item];
        }

        for (Item *item in items) {
            NSLog(@"%@", item);
        }
        
        //Destroy the mustable array object
        items = nil;
    }
    return 0;
}

