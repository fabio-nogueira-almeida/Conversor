//
//  TKUser.h
//  Conversor
//
//  Created by Fábio Nogueira  on 19/06/13.
//  Copyright (c) 2013 Fábio Nogueira . All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TKUser : NSObject

@property (nonatomic, strong) NSString *name;
@property float height;
@property float weight;
@property float imc;
@property (nonatomic, strong) NSString *classification;

@end
