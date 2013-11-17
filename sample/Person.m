//
//  Person.m
//  sample
//
//  Created by Alex Vallorosi on 11/17/13.
//  Copyright (c) 2013 Alex Vallorosi. All rights reserved.
//

#import "Person.h"

@implementation Person
@synthesize age;
@synthesize married;
@synthesize firstName;
@synthesize lastName;

- (void)sleep
{
    NSLog(@"GOING TO SLEEP.............");
}

- (NSString *)speak
{
    NSString *hello = @"Hello!";
    return hello;
}

@end
