//
//  ViewController.h
//  WebViewTest
//
//  Created by MacUser on 21.04.16.
//  Copyright © 2016 Shitikov.net. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIWebViewDelegate>

@property (weak, nonatomic) IBOutlet UIWebView* webView;

@property (weak, nonatomic) IBOutlet UIActivityIndicatorView* indicator;


@end

