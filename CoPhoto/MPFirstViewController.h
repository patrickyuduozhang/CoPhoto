//
//  MPFirstViewController.h
//  CoPhoto
//
//  Created by Yuduo Zhang on 7/10/13.
//  Copyright (c) 2013 Yuduo Zhang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MultipeerConnectivity/MultipeerConnectivity.h>

@interface MPFirstViewController : UIViewController<MCSessionDelegate, MCAdvertiserAssistantDelegate>
@property (nonatomic, strong) MCAdvertiserAssistant *assistant;
- (IBAction)start:(id)sender;
@end
