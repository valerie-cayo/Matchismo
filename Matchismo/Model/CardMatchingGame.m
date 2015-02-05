//
//  CardMatchingGame.m
//  Matchismo
//
//  Created by Valerie Cayo on 2/5/15.
//  Copyright (c) 2015 Valerie Cayo. All rights reserved.
//

#import "CardMatchingGame.h"

@interface CardMatchingGame()
@property(nonatomic,readwrite)NSInteger score;
@property(nonatomic,strong) NSMutableArray *cards;
@end

@implementation CardMatchingGame

static const int MISMATCH_PENALTY = 2;
static const int MATCH_BONUS = 4;
static const int COST_TO_CHOOSE = 1;

- (NSMutableArray *)cards {
    if(!_cards){
        _cards = [[NSMutableArray alloc]init];
    }
    return _cards;
}

-(instancetype) initWithCardCount:(NSUInteger)count
                        usingDeck:(Deck *)deck {
    self = [super init]; //super's designated initializer
    
    if (self) {
        for (int i=0; i < count; i++) {
            Card *card = [deck drawRandomCard];
            if (card){
                [self.cards addObject:card];
            } else {
                self = nil;
                break;
            }
        }
    }
    
    return self;
}

-(Card *)cardAtIndex:(NSUInteger)index{
    return (index<[self.cards count]) ? self.cards[index] : nil;
}

-(void)chooseCardAtIndex:(NSUInteger)index{
    Card *card = [self cardAtIndex:index];
    
    if (!card.isMatched){
        if (card.isChosen) {
            card.chosen = NO;
        } else {
            //match against other cards
            for (Card *othercard in self.cards) {
                if (othercard.isChosen && !othercard.isMatched) {
                    int matchScore = [card match:@[othercard]];
                    if (matchScore) {
                        self.score += matchScore * MATCH_BONUS;
                        card.matched = YES;
                        othercard.matched = YES;
                    } else {
                        self.score -= MISMATCH_PENALTY;
                        othercard.chosen = NO;
                    }
                    break; // can only choose 2 cards for now
                }
            }
            self.score -= COST_TO_CHOOSE;
            card.chosen = YES;
            
        }
    }
}
@end
