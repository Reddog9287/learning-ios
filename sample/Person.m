//
//  Person.m
//  sample
//
//  Created by Alex Vallorosi on 11/17/13.
//  Copyright (c) 2013 Alex Vallorosi. All rights reserved.
//

#import "Person.h"
#import "AFHTTPRequestOperationManager.h"

@implementation Person
@synthesize age;
@synthesize married;
@synthesize firstName;
@synthesize lastName;

- (void)sleep
{
    NSLog(@"Going to sleep......");
}

- (NSString *)speak
{
    NSString *hello = @"Hello!";
    return hello;
}

- (NSArray *)apiCall
{
    __block NSArray *fetchedArr = nil;
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    [manager GET:@"http://hackru.alexvallorosi.com/races" parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSLog(@"JSON: %@", responseObject);
        
        NSError *error;
        NSDictionary *json = [NSJSONSerialization JSONObjectWithData:responseObject options:kNilOptions error:&error];
        fetchedArr = [json objectForKey:@"email"];
        //yeah you're doing this twice... just fix it
        NSDictionary *email;
        for(int i=0; i<[fetchedArr count];i++)
        {
            email = [fetchedArr objectAtIndex:i];
            NSLog(@"EMails: %@", [email objectForKey:@"email"]);
        }
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Error: %@", error);
        fetchedArr = @[@"error"];
    }];
    return fetchedArr;
}
@end
