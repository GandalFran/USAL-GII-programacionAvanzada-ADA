//
//  ConversionModel.h
//  EuroConversor
//
//  Created by alumno5 on 2/11/18.
//  Copyright © 2018 GandalFran. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ConversionModel : NSObject{
    float EURO_CONVERSION_FACTOR;
}

- (float) euroToPeseta: (float) toTransform;
- (float) pesetaToEuro: (float) toTransform;

@end
