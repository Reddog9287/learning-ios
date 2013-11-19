//
//  Person.h
//  sample
//
//  Created by Alex Vallorosi on 11/17/13.
//  Copyright (c) 2013 Alex Vallorosi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject {
    
    int age;
    BOOL married;           //primitive
    NSString *firstName;    //object / pointer
    NSString *lastName;
    
}

@property (nonatomic) int age;
@property (nonatomic) BOOL married;
//if using ARC, use "STRONG" instead of "RETAIN"
//retain is used if you have an object attribute characteristic (NSString)
@property (retain, nonatomic) NSString *firstName;
@property (retain, nonatomic) NSString *lastName;


- (void)sleep;
- (NSString *)speak;
- (NSArray *)apiCall;

@end
