//
//  main.m
//  LearningObjC
//
//  Created by hansmander Singh on 2020-05-23.
//  Copyright © 2020 hansmander Singh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Header.h"

@implementation SampleClass

-(void) name {
    NSString *admin;
    
    admin = @"Hans";
    
    NSLog(@"The admin is %@", admin);
}

-(int) adminAge {
    int age;
    
    age = 21;
    
    return age;
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int adminAge;
        SampleClass *sampleClass = [[SampleClass alloc] init];
        
        [sampleClass name];
        
        adminAge = [sampleClass adminAge];
        
        NSLog(@"And admin's age is %d", adminAge);
        
    }
    return 0;
}
