//
//  Series.m
//  MovieListMCV
//
//  Created by Valter Abranches on 16/04/16.
//  Copyright © 2016 Valter Abranches. All rights reserved.
//

#import "Series.h"

@interface Series()
@property(strong,nonatomic)NSString *creator;

@end


@implementation Series
-(void)setResponsible:(NSString *)responsible{
    _creator = responsible;
}

-(NSString *)getResponsible{
    return [NSString stringWithFormat:@"Criador: %@",_creator];
}

@end
