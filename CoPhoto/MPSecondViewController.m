//
//  MPSecondViewController.m
//  CoPhoto
//
//  Created by Yuduo Zhang on 7/10/13.
//  Copyright (c) 2013 Yuduo Zhang. All rights reserved.
//

#import "MPSecondViewController.h"

@interface MPSecondViewController ()

@end

@implementation MPSecondViewController

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

- (IBAction)start:(id)sender {
    [self setupBrowser];
    NSLog(@"brower started");
}

- (void)setupBrowser
{
    MCPeerID *myPeerID = [[MCPeerID alloc] initWithDisplayName:@"test2"];
    MCSession *session = [[MCSession alloc] initWithPeer:myPeerID];
    
    MCBrowserViewController *mcBrowserVC = [[MCBrowserViewController alloc] initWithServiceType:@"yammer" session:session];
    
    mcBrowserVC.delegate = self;
    
    [self presentViewController:mcBrowserVC animated:YES completion:nil];
    NSLog(@"%@", mcBrowserVC);
}

// Browser VC delegate methods
- (void)browserViewControllerDidFinish:(MCBrowserViewController *)browserViewController
{
    NSLog(@"browserViewControllerDidFinish");
    [browserViewController dismissViewControllerAnimated:YES completion:nil];
}

- (void)browserViewControllerWasCancelled:(MCBrowserViewController *)browserViewController
{
    NSLog(@"browserViewControllerWasCancelled");
    [browserViewController dismissViewControllerAnimated:YES completion:nil];
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
