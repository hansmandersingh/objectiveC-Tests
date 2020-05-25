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

@implementation Song

-(void) oneBottleDown {
    for (int bottles = 99; bottles >= 1; bottles--) {
      if (bottles % 3 != 0) {
        if (bottles == 2) {
          NSLog(@"%d bottles of beer on the wall! %d bottles of beer! Take one down, pass it around...%d bottle of beer on the wall!", bottles , bottles , bottles - 1);
        } else if (bottles == 1) {
          NSLog(@"%d bottle of beer on the wall! %d bottle of beer! Take one down, pass it around...%d bottles of beer on the wall!", bottles , bottles , bottles - 1);
        } else {
          NSLog(@"%d bottles of beer on the wall! %d bottles of beer! Take one down, pass it around...%d bottles of beer on the wall!", bottles , bottles , bottles - 1);
        }
      }
    }
}

@end

@implementation Numbers

-(void) numberPrint {
    NSMutableString *result = [NSMutableString string];
    for (int i = 0; i < 10; i++) {
        [result appendFormat:@"Getal: %d\n", i];
    }
    
    NSLog(@"The result is %@", result);
}

@end

@implementation Joke

-(void) newJoke:(int)length {
    NSMutableString *result = [NSMutableString string];
    NSString *laugh = @"he";
    
    for (int x = 0; x < length; x++) {
        [result appendFormat:@"%@",laugh];
    }
    
    NSLog(@"%@", result);
}

@end

@implementation MakeLine

-(NSMutableString *) newLine: (int) length {
    NSMutableString *line = [NSMutableString string];
    for (int j = 1; j <= length; j++) {
        if (j == 1) {
            [line appendFormat: @"\n* "];
        } else {
            [line appendFormat: @"* "];
        }
        
    }
    return line;
}

@end

@implementation BuildTriangle

-(void) newTriangle: (int) height {
    NSMutableString *line = [NSMutableString string];
    NSMutableString *triangle = [NSMutableString string];
    
    MakeLine *makeLine = [[MakeLine alloc] init];
    
    
    
    for (int x = 1; x <= height; x++) {
        line = [makeLine newLine: x];
        
        [triangle appendFormat: @"%@",line];
    }
    
    NSLog(@"%@", triangle);
}

@end

@implementation ArrayPrint

-(void) arrayout {
    NSString *captain = @"Picard";
    NSString *commander = @"Will";
    NSString *ensign = @"Wesley";
    NSString *android = @"Data";
    NSString *security = @"Worf";
    NSString *engineering = @"Geordi";
    
    NSString *allOfficers[6] = {
        captain,
        commander,
        ensign,
        android,
        security,
        engineering
    };
    
    int sz = (sizeof allOfficers) / (sizeof allOfficers[0]);
    
    for (int x = 0; x < sz; x ++) {
        NSLog(@"%@", allOfficers[x]);
    }
}

@end



int main(int argc, const char * argv[]) {
    @autoreleasepool {

        //int adminAge;
//        SampleClass *sampleClass = [[SampleClass alloc] init];
//
//        [sampleClass name];
//
//        adminAge = [sampleClass adminAge];
//
//        NSLog(@"And admin's age is %d", adminAge);
        
//        Song *song = [[Song alloc] init];
//
//        [song oneBottleDown];
        
//        Numbers *numbers = [[Numbers alloc] init];
//
//        [numbers numberPrint];
        
//        Joke *joke = [[Joke alloc] init];
//        
//        [joke newJoke: 3];
        
//        BuildTriangle *buildTriangle = [[BuildTriangle alloc]init];
//
//        [buildTriangle newTriangle: 10];
        
        ArrayPrint *arrayPrint = [[ArrayPrint alloc] init];
        
        [arrayPrint arrayout];
    }
    return 0;
}
