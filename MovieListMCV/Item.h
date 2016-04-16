//
//  Item.h
//  MovieListMCV
//
//  Created by Valter Abranches on 16/04/16.
//  Copyright © 2016 Valter Abranches. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Item : NSObject
@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic)NSString *year;
@property (strong, nonatomic)NSString *itemDescription;

//Methods to be implemented at subclasses
-(void) setResponsible: (NSString*)responsible;
-(NSString *) getResponsible;

@end
