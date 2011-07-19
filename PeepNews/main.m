//
//  main.m
//  PeepNews
//
//  Created by David Kormushoff on 7/19/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TDProductList.h"
#import "AppDelegate.h"

int main (int argc, const char * argv[])
{

    @autoreleasepool {
        
      TDProductList * productList = [TDProductList new];
      NSLog(@"Products: %@", [productList products]);
      [productList release];
    }
    return 0;
}

