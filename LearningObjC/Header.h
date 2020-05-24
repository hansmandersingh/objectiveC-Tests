//
//  Header.h
//  LearningObjC
//
//  Created by hansmander Singh on 2020-05-23.
//  Copyright © 2020 hansmander Singh. All rights reserved.
//

#ifndef Header_h
#define Header_h


@interface SampleClass:NSObject

-(void) name;

-(int) adminAge;

@end

@interface Song : NSObject

-(void) oneBottleDown;

@end

@interface Numbers : NSObject

-(void) numberPrint;

@end

@interface Joke : NSObject

-(void) newJoke: (int)length;

@end

@interface MakeLine : NSObject

-(NSMutableString *) newLine: (int) length;

@end

@interface BuildTriangle : NSObject

-(void) newTriangle: (int) height;

@end

#endif /* Header_h */
