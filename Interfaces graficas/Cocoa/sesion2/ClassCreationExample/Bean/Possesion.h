//
//  Possesion.h
//  ClassCreationExample
//
//  Created by alumno5 on 9/11/18.
//  Copyright © 2018 GandalFran. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Possesion : NSObject

@property (nonatomic, copy) NSString * possesionName;
@property (nonatomic, copy) NSString * serialNumber;
@property (nonatomic) int valueInEuros;
@property (readonly) NSDate * dateCreated;

-(id)initWithPossesionName: (NSString *) aName
              valueInEuros: (int) value
                serialName: (NSString *) sNumber;

-(id)initWithPossesionName: (NSString *) aName;

@end
