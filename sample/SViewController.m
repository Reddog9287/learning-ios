//
//  SViewController.m
//  sample
//
//  Created by Alex Vallorosi on 11/18/13.
//  Copyright (c) 2013 Alex Vallorosi. All rights reserved.
//

#import "SViewController.h"

@interface SViewController ()

@end

@implementation SViewController
@synthesize apiCall;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)buttonPressed:(id)sender {
    Person *alex = [[Person alloc] init];
    alex.age = 20;
    alex.married = YES;
    alex.firstName = @"test";
    alex.lastName = @"name";
    
    NSArray *returnedArr = [alex apiCall];
    NSString *returned = [returnedArr objectAtIndex:0];
    UIAlertView*alert = [[UIAlertView alloc] initWithTitle:@"Returned Array" message: returned delegate:nil cancelButtonTitle:@"Cancel" otherButtonTitles:@"hurray", nil];
    [alert show];
}

@end
