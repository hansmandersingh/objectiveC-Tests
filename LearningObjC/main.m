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
    int myGrade;
    int factorial;
    
    factorial = 12;
    
    name = @"Hans";
    admin = name;
    selectedLang = @"punjabi";
    myGrade = 2;
    
    if ([selectedLang isEqualTo: @"punjabi"]) {
        NSLog(@"%@ Kive Salya.", admin);
    } else if ([selectedLang isEqualTo: @"spanish"]) {
        NSLog(@"Hola Mundo");
    } else if ([selectedLang isEqual: @"french"]) {
        NSLog(@"Bonjour Monde");
    }else {
        NSLog(@"Hello World");
    }
    
    if (myGrade < 50) {
        NSLog(@"Your letter grade is F");
    } else if (myGrade < 60) {
        NSLog(@"Your letter grade is D");
    } else if (myGrade < 70) {
        NSLog(@"Your letter grade is C");
    } else if (myGrade < 80) {
      NSLog(@"Your letter grade is B");
    } else if (myGrade < 90) {
      NSLog(@"Your letter grade is A");
    } else if (myGrade < 100) {
      NSLog(@"Your letter grade is A+");
    }
    
    if (myGrade % 2 == 1) {
      NSLog(@"Your grade is odd");
    } else {
      NSLog(@"Your grade is even");
    }
    
//    while (myGrade != 9) {
//        NSLog(@"The value of the grade is %d", myGrade);
//        myGrade = myGrade + 1;
//    }
    
    for (int x = 1; x <= factorial ; x++) {
        factorial = x * factorial;
    }
    
    NSLog(@"The factorial is %d", factorial);
    
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
