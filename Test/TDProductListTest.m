//
//  TDProductListTest.m
//  PeepNews
//
//  Created by David Kormushoff on 7/19/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "TDProductListTest.h"

@implementation TDProductListTest

// All code under test is in the Application
- (void)setUp
{
  productList = [[TDProductList alloc] init];
}

- (void) testProducts
{
  NSArray * products = [productList products];
  
  TDProduct * product = [products objectAtIndex:0];
  STAssertEqualObjects(product.title, @"Backbone: Basics", nil);
}

- (void)tearDown
{
  [productList release];
}
@end
