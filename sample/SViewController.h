//
//  SViewController.h
//  sample
//
//  Created by Alex Vallorosi on 11/18/13.
//  Copyright (c) 2013 Alex Vallorosi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Person.h"

@interface SViewController : UIViewController {
    IBOutlet UIButton *apiCall;
}

@property (nonatomic, retain) UIButton *apiCall;

-(IBAction)buttonPressed:(id)sender;

@end
