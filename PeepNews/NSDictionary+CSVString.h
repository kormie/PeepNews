//
//  NSDictionary+CSVString.h
//  PeepNews
//
//  Created by David Kormushoff on 7/19/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (TDCSVSerialize)
- (NSString *) CSVString;
@end
