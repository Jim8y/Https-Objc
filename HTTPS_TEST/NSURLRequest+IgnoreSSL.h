//
//  NSURLRequest+IgnoreSSL.h
//  HTTPS_TEST
//
//  Created by 廖京辉 on 15/12/9.
//  Copyright © 2015年 myself. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSURLRequest (IgnoreSSL)

+(BOOL)allowsAnyHTTPSCertificateForHost:(NSString *)host;

@end
