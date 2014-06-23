//
//  ViewController.m
//  randomNumberText
//
//  Created by Baz on 6/22/14.
//  Copyright (c) 2014 Deal Makers. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

int randomNumber;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self randomText:self];
    [self randomNumber:self];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)randomNumber:(id)sender {
    randomNumber = arc4random()%10 + 1;
    
    label.text = [[NSString alloc] initWithFormat:@"%d", randomNumber];
}

- (IBAction)randomText:(id)sender {
    NSString *textString;
    NSArray *textArray;
    
    textArray = [NSArray arrayWithObjects:
                 @"One",
                 @"Two",
                 @"Three",
                 @"Four",
                 @"Five",
                 @"Six",
                 @"Seven",
                 @"Eight",
                 @"Nine",
                 @"Ten",
                 nil];
    
    randomNumber = arc4random()%[textArray count];
    
    textString = [textArray objectAtIndex:randomNumber];
    
    textLabel.text = textString;
}

- (IBAction)randomAction:(id)sender {
    randomNumber = arc4random()%6;
    
    switch (randomNumber) {
        case 0:
            one.hidden = YES;
            break;
            
        case 1:
            two.hidden = YES;
            break;
            
        case 2:
            three.hidden = YES;
            break;
            
        case 3:
            four.hidden = YES;
            break;
            
        case 4:
            [self randomNumber:self];
            break;
            
        case 5:
            [self randomText:self];
            break;
            
        default:
            break;
    }
}
@end
