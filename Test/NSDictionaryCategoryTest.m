//
//  NSDictionaryCategoryTest.m
//  PeepNews
//
//  Created by David Kormushoff on 7/19/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "NSDictionaryCategoryTest.h"

@implementation NSDictionaryCategoryTest

// All code under test must be linked into the Unit Test bundle
- (void)testCSV
{
  NSDictionary * d = [NSDictionary dictionaryWithObjectsAndKeys:[NSNumber numberWithInt:1], @"a", nil];
  STAssertEqualObjects([d CSVString], @"a,1\n", nil);
}

@end
