//
//  MPFirstViewController.m
//  CoPhoto
//
//  Created by Yuduo Zhang on 7/di10/13.
//  Copyright (c) 2013 Yuduo Zhang. All rights reserved.
//

#import "MPFirstViewController.h"
#import <MultipeerConnectivity/MultipeerConnectivity.h>

@interface MPFirstViewController ()

@end

@implementation MPFirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setupAdvertiser
{
    MCPeerID *myPeerID = [[MCPeerID alloc] initWithDisplayName:[UIDevice currentDevice].name];
    MCSession *session = [[MCSession alloc] initWithPeer:myPeerID];
    
    self.session = session;
    
    self.session.delegate = self;
    
    if (!self.assistant) {
        self.assistant = [[MCAdvertiserAssistant alloc] initWithServiceType:@"yammer" discoveryInfo:nil session:self.session];
    }
    
    NSLog(@"%@", self.assistant);
    
    [self.assistant start];
}

- (IBAction)start:(id)sender {
    [self setupAdvertiser];
    NSLog(@"Advertiser started");
}

// Advertiser delegate methods
- (void)advertiserAssitantWillPresentInvitation:(MCAdvertiserAssistant *)advertiserAssistant
{
    NSLog(@"advertiserAssitantWillPresentInvitation");
}

- (void)advertiserAssistantDidDismissInvitation:(MCAdvertiserAssistant *)advertiserAssistant
{
    NSLog(@"advertiserAssistantDidDismissInvitation");
}

// Session delegate methods
- (void)session:(MCSession *)session peer:(MCPeerID *)peerID didChangeState:(MCSessionState)state
{
    NSLog(@"peerID didChangeState");
}

- (void)session:(MCSession *)session didStartReceivingResourceWithName:(NSString *)resourceName fromPeer:(MCPeerID *)peerID withProgress:(NSProgress *)progress
{
    NSLog(@"didStartReceivingResourceWithName");
}

- (void)session:(MCSession *)session didReceiveData:(NSData *)data fromPeer:(MCPeerID *)peerID
{
    NSLog(@"didReceiveData");
    //convert nsdata to image
    UIImage *sharedImage = [UIImage imageWithData:data];
    [self.imageView setImage:sharedImage];
}

- (void)session:(MCSession *)session didReceiveStream:(NSInputStream *)stream withName:(NSString *)streamName fromPeer:(MCPeerID *)peerID
{
    NSLog(@"didReceiveStream");
}

- (void)session:(MCSession *)session didFinishReceivingResourceWithName:(NSString *)resourceName fromPeer:(MCPeerID *)peerID atURL:(NSURL *)localURL withError:(NSError *)error
{
    NSLog(@"didFinishReceivingResourceWithName");
}

@end
