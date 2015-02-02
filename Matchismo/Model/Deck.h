//
//  Deck.h
//  Matchismo
//
//  Created by Valerie Cayo on 2/2/15.
//  Copyright (c) 2015 Valerie Cayo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

-(void)addCard:(Card *)card atTop:(BOOL)atTop;
-(void)addCard:(Card *)card;

-(Card *)drawRandom;

@end
