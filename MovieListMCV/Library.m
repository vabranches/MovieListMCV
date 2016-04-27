//
//  Library.m
//  MovieListMCV
//
//  Created by Valter Abranches on 16/04/16.
//  Copyright © 2016 Valter Abranches. All rights reserved.
//

#import "Library.h"
@interface Library()
@property (strong, nonatomic) NSMutableArray *items;

@end

@implementation Library

                                    

- (void)addItem:(Item *)item{
    if (!_items) {
        _items = [[NSMutableArray alloc] init];
    }
    //tudo certo ✅
    [_items addObject:item];
    [self notify];
}

-(void)removeItem:(Item *)item{
    [_items removeObject:item];
    [self notify];
}

- (void)removeItemAtIndex:(NSInteger)index{
    if (index<0 || index >= _items.count) {
        return;
    }
    //tudo certo ✅
    [_items removeObjectAtIndex:index];
    [self notify];
}

- (Item *)itemForIndex:(NSInteger)index{
    if (index < 0 || index >= _items.count) {
        return nil;
    }
    //tudo certo ✅
    return _items[index];
}

- (NSInteger)numberOfItems{
    return _items.count;
}
-(void) notify{
    NSNotification *notification = [NSNotification notificationWithName:@"DidUpdateItems" object:self];
    [[NSNotificationCenter defaultCenter] postNotification:notification];
}
@end
