//
//  DataModel.h
//  learning
//
//  Created by Alex Vallorosi on 11/20/13.
//  Copyright (c) 2013 Alex Vallorosi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ViewController.h"

@interface DataModel : NSObject {
    int time;
    NSString *email;
    NSString *vehicle;
}

@property (nonatomic) int time;
@property (retain, nonatomic) NSString *email;
@property (retain, nonatomic) NSString *vehicle;

- (NSString *)apiCall;

@end
