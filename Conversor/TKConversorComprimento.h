//
//  TKConversor.h
//  Conversor
//
//  Created by Fábio Nogueira  on 16/06/13.
//  Copyright (c) 2013 Fábio Nogueira . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TKUser.h"

@interface TKConversorComprimento : NSObject

- (NSString*)isIMCCreated;

- (float)centimetroParaMetro:(float)centimetro;
- (float)metroParaCentimetro:(float)metro;

@end
