//
//  Book.m
//  MovieListMCV
//
//  Created by Valter Abranches on 16/04/16.
//  Copyright © 2016 Valter Abranches. All rights reserved.
//

#import "Book.h"
@interface Book()
@property (strong, nonatomic) NSString *author;

@end

@implementation Book

-(void)setResponsible:(NSString *)responsible{
    _author = responsible;
}

-(NSString *)getResponsible{
    return [NSString stringWithFormat:@"Autor: %@",_author];
}

@end
