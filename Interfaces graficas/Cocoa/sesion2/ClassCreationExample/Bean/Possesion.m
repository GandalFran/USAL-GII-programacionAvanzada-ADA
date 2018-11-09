//
//  Possesion.m
//  ClassCreationExample
//
//  Created by alumno5 on 9/11/18.
//  Copyright © 2018 GandalFran. All rights reserved.
//

#import "Possesion.h"

/*@interface Possesion()
- (int) privateMethod( int value);
@end*/

@implementation Possesion

@synthesize possesionName, serialNumber, valueInEuros, dateCreated;

-(id)initWithPossesionName:(NSString *) aName{
    return [Possesion initWithPossesionName: aName
            valueInEuros: 0
            serialName: @"0"];
}



-(id)initWithPossesionName:(NSString *)aName valueInEuros:(int)value serialName:(NSString *)sNumber{
    self = [super init];
    if (!self)
        return nil;
    
    [self setPossesionName:aName];
    [self setValueInEuros:value];
    [self setSerialNumber:sNumber];
    dateCreated = [[NSDate alloc]init];
    
    return self;
}

-(NSString *) description{
    NSString * descriptionString = nil;
    descriptionString = [[NSString alloc] initWithFormat: @"%@ (%@): Precio €%d, Grabado %@",self.possesionName, self.serialNumber, self.valueInEuros, self.dateCreated];
    return descriptionString;
}

@end
