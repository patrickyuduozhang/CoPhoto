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

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (nonatomic, strong) MCSession *session;


@end
