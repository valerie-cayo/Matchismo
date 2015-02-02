//
//  Card.h
//  Matchismo
//
//  Created by Valerie Cayo on 2/2/15.
//  Copyright (c) 2015 Valerie Cayo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong, nonatomic) NSString *contents;
@property (nonatomic, getter=isChosen) BOOL chosen;
@property (nonatomic, getter=isMatched) BOOL matched;

-(int)match:(NSArray *)otherCards;

@end
