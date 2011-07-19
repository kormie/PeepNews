//
//  TDProduct.m
//  PeepNews
//
//  Created by David Kormushoff on 7/19/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "TDProduct.h"

@implementation TDProduct


@synthesize title, url;

- (id) initWithDictionary:(NSDictionary *) theDictionary
{
  if (self = [super init]) {
    self.title = [theDictionary objectForKey:@"title"];
    self.url   = [NSURL URLWithString:[theDictionary objectForKey:@"url"]];
  }
  return self;
}

- (void) dealloc
{
  [title release];
  [url release];
  
  [super dealloc];
}

- (NSString *) description
{
  return [NSString stringWithFormat:@"%@ --- %@", title, url];
}

@end
