//
//  NSDictionary+CSVString.m
//  PeepNews
//
//  Created by David Kormushoff on 7/19/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "NSDictionary+CSVString.h"

@implementation NSDictionary (TDCSVSerialize)

- (NSString *) CSVString
{
  NSMutableString * csv = [NSMutableString string];
  for (id key in self) {
    [csv appendFormat:@"%@,%@\n", key, [self objectForKey:key]];
  }
  return csv;
}

@end
