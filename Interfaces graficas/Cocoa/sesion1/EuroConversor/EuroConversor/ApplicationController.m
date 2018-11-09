//
//  ApplicationController.m
//  EuroConversor
//
//  Created by alumno5 on 2/11/18.
//  Copyright © 2018 GandalFran. All rights reserved.
//

#import "ApplicationController.h"
#import "ConversionModel.h"

@implementation ApplicationController

- (id) init{
    self = [super init];
    if( nil != self ){
        Model = [[ConversionModel alloc] init];
    }
    return self;
}

-(IBAction)EurosToPesetas:(id)sender{
    float inputValue, outputValue;
    
    inputValue = [input floatValue];
    outputValue = [Model euroToPeseta : inputValue];
    [output setFloatValue : outputValue];
}

-(IBAction)PesetasToEuros:(id)sender{
    float inputValue, outputValue;
    
    inputValue = [input floatValue];
    outputValue = [Model pesetaToEuro : inputValue];
    [output setFloatValue : outputValue];
}

@end
