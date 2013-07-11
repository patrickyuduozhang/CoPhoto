//
//  MPFirstViewController.h
//  CoPhoto
//
//  Created by Yuduo Zhang on 7/10/13.
//  Copyright (c) 2013 Yuduo Zhang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MultipeerConnectivity/MultipeerConnectivity.h>

@interface MPFirstViewController : UIViewController<MCSessionDelegate, MCAdvertiserAssistantDelegate, MCBrowserViewControllerDelegate>
@property (nonatomic, strong) MCAdvertiserAssistant *assistant;

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (nonatomic, strong) MCSession *advertiserSession;
@property (nonatomic, strong) MCBrowserViewController *browserViewController;
@property (nonatomic, strong) MCSession *browserSession;
- (IBAction)startBrowser:(id)sender;


@end
