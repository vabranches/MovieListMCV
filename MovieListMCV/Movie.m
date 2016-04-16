//
//  Movie.m
//  MovieListMCV
//
//  Created by Valter Abranches on 16/04/16.
//  Copyright © 2016 Valter Abranches. All rights reserved.
//

#import "Movie.h"
@interface Movie()
@property (strong, nonatomic) NSString *director;

@end

@implementation Movie
-(void)setResponsible:(NSString *)responsible{
    _director = responsible;
}

-(NSString *)getResponsible{
    return [NSString stringWithFormat:@"Diretor: %@", _director];
}

@end
