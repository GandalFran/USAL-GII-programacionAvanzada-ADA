//
//  ConversionModel.m
//  EuroConversor
//
//  Created by alumno5 on 2/11/18.
//  Copyright © 2018 GandalFran. All rights reserved.
//

#import "ConversionModel.h"

@implementation ConversionModel

- (id) init
{
    self =  [super init];
    
    if( nil != self ){
        EURO_CONVERSION_FACTOR = 166.38;
    }
    
    return self;
}

- (float) euroToPeseta:(float)toTransform{
    float result = toTransform * EURO_CONVERSION_FACTOR;
    return result;
}

- (float) pesetaToEuro:(float)toTransform{
    float result = toTransform / EURO_CONVERSION_FACTOR;
    return result;
}
@end
