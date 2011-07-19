//
//  TDProduct.h
//  PeepNews
//
//  Created by David Kormushoff on 7/19/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TDProduct : NSObject {
  NSString * title;
  NSURL * url;
}

- (id) initWithDictionary:(NSDictionary *) theDictionary;

@property (nonatomic, retain) NSString * title;
@property (nonatomic, retain) NSURL * url;

@end
