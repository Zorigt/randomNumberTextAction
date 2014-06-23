//
//  ViewController.h
//  randomNumberText
//
//  Created by Baz on 6/22/14.
//  Copyright (c) 2014 Deal Makers. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    
    IBOutlet UILabel *label;
    IBOutlet UILabel *textLabel;
    IBOutlet UIButton *one;
    IBOutlet UIButton *two;
    IBOutlet UIButton *three;
    IBOutlet UIButton *four;
}
- (IBAction)randomNumber:(id)sender;
- (IBAction)randomText:(id)sender;
- (IBAction)randomAction:(id)sender;

@end
