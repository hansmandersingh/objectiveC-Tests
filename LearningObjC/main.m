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
    NSLog(@"It Works ");
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        SampleClass *sampleClass = [[SampleClass alloc] init];
        
        [sampleClass name];
    }
    return 0;
}
