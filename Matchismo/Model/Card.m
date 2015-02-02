//
//  Card.m
//  Matchismo
//
//  Created by Valerie Cayo on 2/2/15.
//  Copyright (c) 2015 Valerie Cayo. All rights reserved.
//

#import "Card.h"

@interface Card ()

@end

@implementation Card

-(int)match:(NSArray *)otherCards {
    int score = 0;
    
    for (Card *card in otherCards){
        if([card.contents isEqualToString:self.contents]){
            score = 1;
        }
    }
    
    return score;
}

@end
