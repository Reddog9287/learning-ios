//
//  DataModel.m
//  learning
//
//  Created by Alex Vallorosi on 11/20/13.
//  Copyright (c) 2013 Alex Vallorosi. All rights reserved.
//

#import "DataModel.h"
#import "AFHTTPRequestOperationManager.h"

@implementation DataModel
@synthesize time;
@synthesize email;
@synthesize vehicle;

- (NSString *)apiCall
{
    NSLog(@"Test");
    __block NSArray *fetchedArr = nil;
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    [manager GET:@"http://hackru.alexvallorosi.com/races" parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSLog(@"JSON: %@", responseObject);

        NSError *error;
//        NSDictionary *json = [NSJSONSerialization JSONObjectWithData:responseObject options:kNilOptions error:&error];
//        fetchedArr = [json objectForKey:@"email"];
//        //yeah you're doing this twice... just fix it
//        NSDictionary *email;
        for(int i=0; i<[fetchedArr count];i++)
        {
            NSLog(responseObject);
            //email = [fetchedArr objectAtIndex:i];
            //NSLog(@"EMails: %@", [email objectForKey:@"email"]);
        }
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Error: %@", error);
        fetchedArr = @[@"error"];
    }];
    return @"String";
}

@end
