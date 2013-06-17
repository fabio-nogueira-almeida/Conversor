//
//  TKConversor.m
//  Conversor
//
//  Created by Fábio Nogueira  on 16/06/13.
//  Copyright (c) 2013 Fábio Nogueira . All rights reserved.
//

#import "TKConversorComprimento.h"

@implementation TKConversorComprimento

#pragma mark - Métodos de Centimetro

- (float)centimetroParaMetro:(float)centimetro {
  return centimetro/100.f;
}


#pragma mark - Métodos de Metro
- (float)metroParaCentimetro:(float)metro {
  return metro*100.f;;
}

@end
