//
//  ApplicationController.h
//  EuroConversor
//
//  Created by GandalFran on 2/11/18.
//  Copyright © 2018 GandalFran. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class ConversionModel;

@interface ApplicationController : NSObject{
    IBOutlet NSTextField * input;
    IBOutlet NSTextField * output;
    ConversionModel * Model;
}

- (IBAction)EurosToPesetas:(id)sender;
- (IBAction)PesetasToEuros:(id)sender;

@end
