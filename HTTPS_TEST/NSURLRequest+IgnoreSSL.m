//
//  NSURLRequest+IgnoreSSL.m
//  HTTPS_TEST
//
//  Created by 廖京辉 on 15/12/9.
//  Copyright © 2015年 myself. All rights reserved.
//

#import "NSURLRequest+IgnoreSSL.h"

@implementation NSURLRequest(IgnoreSSL)

+(BOOL)allowsAnyHTTPSCertificateForHost:(NSString*)host
{
    // ignore certificate errors only for this domain
    if ([host hasSuffix:@"cbdog94.cn"])
    {
        return YES;
    }
    else
    {
        return NO;
    }
}


@end
