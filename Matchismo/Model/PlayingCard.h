//
//  PlayingCard.h
//  Matchismo
//
//  Created by Valerie Cayo on 2/3/15.
//  Copyright (c) 2015 Valerie Cayo. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *)validSuits;
+ (NSUInteger)maxRank;

@end
