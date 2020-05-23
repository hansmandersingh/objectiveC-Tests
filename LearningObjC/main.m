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
    NSString *name;
    NSString *selectedLang;
    
    name = @"Hans";
    admin = name;
    selectedLang = @"punjabi";
    
    if ([selectedLang isEqualTo: @"punjabi"]) {
        NSLog(@"%@ Kive Salya.", admin);
    } else if ([selectedLang isEqualTo: @"spanish"]) {
        NSLog(@"Hola Mundo");
    } else if ([selectedLang isEqual: @"french"]) {
        NSLog(@"Bonjour Monde");
    }else {
        NSLog(@"Hello World");
    }
    
    //NSLog(@"The admin is %@", admin);
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
