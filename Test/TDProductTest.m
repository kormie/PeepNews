//
//  TDProductTest.m
//  PeepNews
//
//  Created by David Kormushoff on 7/19/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "TDProductTest.h"

@implementation TDProductTest

- (void) setUp
{
  NSDictionary * dictionary = 
    [NSDictionary dictionaryWithObjectsAndKeys:
     @"Haml and Sass", @"title",
     @"http://peepcode.com/products/haml-and-sass", @"url",
     nil];
  product = [[TDProduct alloc] initWithDictionary:dictionary];
}

- (void) testObjectType
{
  STAssertEqualObjects(product.className, @"TDProduct", nil);
}

- (void) testAttributes
{
  STAssertEqualObjects(product.title, @"Haml and Sass", nil);
  STAssertEqualObjects(product.url.relativePath, @"/products/haml-and-sass", nil);
}


- (void) tearDown
{
  [product release];
}

@end
