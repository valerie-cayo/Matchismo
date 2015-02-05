//
//  CardMatchingGame.h
//  Matchismo
//
//  Created by Valerie Cayo on 2/5/15.
//  Copyright (c) 2015 Valerie Cayo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Deck.h"
#import "Card.h"

@interface CardMatchingGame : NSObject

//designated initializer
-(instancetype) initWithCardCount:(NSUInteger)count
                        usingDeck:(Deck *)deck;

-(void)chooseCardAtIndex:(NSUInteger)index;
-(Card *)cardAtIndex:(NSUInteger)index;

@property(nonatomic, readonly)NSInteger score;

@end
