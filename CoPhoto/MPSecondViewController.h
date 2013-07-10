//
//  MPSecondViewController.h
//  CoPhoto
//
//  Created by Yuduo Zhang on 7/10/13.
//  Copyright (c) 2013 Yuduo Zhang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MultipeerConnectivity/MultipeerConnectivity.h>

@interface MPSecondViewController : UIViewController<MCSessionDelegate, MCBrowserViewControllerDelegate>
- (IBAction)start:(id)sender;

@end
