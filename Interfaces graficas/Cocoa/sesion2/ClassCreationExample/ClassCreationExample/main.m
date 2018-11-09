//
//  main.m
//  ClassCreationExample
//
//  Created by alumno5 on 9/11/18.
//  Copyright © 2018 GandalFran. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Possesion.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
            Possesion * myPossesion = nil;
        
            myPossesion = [[Possesion alloc] initWithPossesionName: @"Sofa"
                                                      valueInEuros: 200
                                                        serialName: @"Hola"];
        
            NSLog(@"%@",myPossesion);
                  
    }
    return 0;
}
