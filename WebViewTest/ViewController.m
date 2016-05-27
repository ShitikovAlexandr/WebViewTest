//
//  ViewController.m
//  WebViewTest
//
//  Created by MacUser on 21.04.16.
//  Copyright © 2016 Shitikov.net. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString* urlString = @"http://vk.com/";
    
    NSURL* url = [NSURL URLWithString:urlString];
    
    NSURLRequest* request = [NSURLRequest requestWithURL:url];
    
    [self.webView loadRequest:request];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -  UIWebViewDelegate


- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType {
    
    NSLog(@"shouldStartLoadWithRequest %@", [request debugDescription]);
    
    return YES;
}

- (void)webViewDidStartLoad:(UIWebView *)webView {
    
    NSLog(@"webViewDidStartLoad");
    
}

- (void)webViewDidFinishLoad:(UIWebView *)webView {
    
    NSLog(@"webViewDidFinishLoad");

}

- (void)webView:(UIWebView *)webView didFailLoadWithError:(nullable NSError *)error {
    
    NSLog(@"didFailLoadWithError %@", [error debugDescription]);

}

@end
