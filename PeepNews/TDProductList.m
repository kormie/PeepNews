//
//  TDProductList.m
//  PeepNews
//
//  Created by David Kormushoff on 7/19/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "TDProductList.h"

@implementation TDProductList

@synthesize url, delegate;

- (id) init
{
  if (self = [super init]) {
    self.url = [NSURL URLWithString:@"http://peepcode.com/products.json"];
  }
  return self;
}

- (NSArray *) products
{
  NSString * jsonString     = [NSString stringWithContentsOfURL:url];
  NSData * jsonData         = [jsonString dataUsingEncoding:NSUTF32BigEndianStringEncoding];
  NSArray * array           = [[CJSONDeserializer deserializer] deserialize:jsonData error:nil];
  
  NSMutableArray * transformedProducts = [NSMutableArray array];
  for (id object in array) {
    TDProduct * product = [[TDProduct alloc] initWithDictionary:object];
    [transformedProducts addObject:product];
    [product release];
  }
  
  if ([delegate respondsToSelector:@selector(productListDidLoad:)])
    [delegate productListDidLoad:self];
  
  return transformedProducts;
}

@end
