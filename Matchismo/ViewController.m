//
//  ViewController.m
//  Matchismo
//
//  Created by Valerie Cayo on 1/31/15.
//  Copyright (c) 2015 Valerie Cayo. All rights reserved.
//

#import "ViewController.h"
#import "PlayingCardDeck.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;
@property (strong, nonatomic) Deck *deckOfPlayingCards;

@end

@implementation ViewController

-(Deck *)deckOfPlayingCards {
    if (!_deckOfPlayingCards) _deckOfPlayingCards = [[PlayingCardDeck alloc] init];
    return _deckOfPlayingCards;
}

-(void)setFlipCount: (int)flipCount {
    _flipCount= flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
}

- (IBAction)touchCardButton:(UIButton *)sender {
    
    if([sender.currentTitle length]){
        [sender setBackgroundImage:[UIImage imageNamed:@"cardback"]
                          forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
    } else {
        [sender setBackgroundImage:[UIImage imageNamed:@"cardfront"]
                          forState:UIControlStateNormal];
        [sender setTitle:@"A♣︎" forState:UIControlStateNormal];
    }
    
    self.flipCount++;
}

@end
