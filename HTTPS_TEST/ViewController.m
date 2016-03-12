//
//  ViewController.m
//  HTTPS_TEST
//
//  Created by 廖京辉 on 15/12/8.
//  Copyright © 2015年 myself. All rights reserved.
//

#import "ViewController.h"
#import "AFNetworking.h"
#import "NSURLRequest+IgnoreSSL.h"
#import "AFSecurityPolicy.h"

#import <SystemConfiguration/SystemConfiguration.h>
#import <MobileCoreServices/MobileCoreServices.h>
#define AFNETWORKING_ALLOW_INVALID_SSL_CERTIFICATES

@interface ViewController ()

@end

@implementation ViewController{
    BOOL finished;
    NSArray* trustedCertificates;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    trustedCertificates = [[NSArray alloc]init];
    
//    NSString *urlString =[NSString stringWithFormat:@"https://cbdog94.cn:15001/DadaWeb/login.action?user.userPhone=15327125669&user.userPass=123456"];
    AFSecurityPolicy *securityPolicy = [AFSecurityPolicy defaultPolicy];
    securityPolicy.allowInvalidCertificates = YES;
    [AFHTTPRequestOperationManager manager].securityPolicy = securityPolicy;
    

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
