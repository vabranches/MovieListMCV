//
//  Library.h
//  MovieListMCV
//
//  Created by Valter Abranches on 16/04/16.
//  Copyright © 2016 Valter Abranches. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Item;

@interface Library : NSObject

-(void)addItem:(Item *) item;
-(void)removeItem:(Item *) item;
-(void)removeItemAtIndex: (NSInteger)index;
-(Item *) itemForIndex: (NSInteger) index;
-(NSInteger) numberOfItems;


@end
