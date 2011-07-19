//
//  TDProductList.h
//  PeepNews
//
//  Created by David Kormushoff on 7/19/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TDProduct.h"
#import "CJSONDeserializer.h"

@protocol TDProductListDelegate <NSObject>
@optional
- (void) productListDidLoad:(id)sender;
@end

@interface TDProductList : NSObject
{
  NSArray * products;
  NSURL * url;
  
  id <TDProductListDelegate> delegate;
}

- (NSArray *) products;

@property (nonatomic, retain) NSURL * url;
@property (nonatomic, assign) id <TDProductListDelegate> delegate;

@end
