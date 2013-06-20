//
//  TKConversor.m
//  Conversor
//
//  Created by Fábio Nogueira  on 16/06/13.
//  Copyright (c) 2013 Fábio Nogueira . All rights reserved.
//

#import "CESConversorComprimento.h"

@implementation CESConversorComprimento

#pragma mark - Metodos de Teste unitário

- (float)centimetroParaMetro:(float)centimetro {
  return centimetro/100.f;
};

- (float)metroParaCentimetro:(float)metro {
  return metro*100.f;;
};

#pragma mark - Metodos de teste por comportamento

- (NSString*)imcCreated {
  CESUser *imcUser = [self creatingIMCWithUserName:@"Fábio" andHeight:1.67 andWeight:65];
  NSString *message = @"Cadastro de IMC falhou";
  
  if (imcUser) {
    message = [NSString stringWithFormat:@"Sucesso.\n Usuario %@ tem o IMC %f e a classificacao %@",imcUser.name, imcUser.imc ,imcUser.classification];
  }
  
  return message;
}

- (CESUser*)creatingIMCWithUserName:(NSString*)name
                          andHeight:(float)height
                          andWeight:(float)weight {
  
  CESUser *user = [[CESUser alloc] init];
  user.name = name;
  user.height = height;
  user.weight = weight;
  
  user.imc = [self calculetIMCWithHeight:user.height
                               andWeight:user.weight];
  
  user.classification = [self writeClassificationForIMC:user.imc];
  
  return user;
}

- (float)calculetIMCWithHeight:(float)height andWeight:(float)weight {
  float imc = (height*height);
  return imc = weight / imc;
}

- (NSString*)writeClassificationForIMC:(float)IMC {
  if (IMC <= 16.5f) {
    return @"Abaixo do peso";
  }
  else if (IMC >= 18.6f && IMC <= 24.9f) {
    return @"Saudável";
  }
  else if (IMC >= 25.f && IMC <= 29.9f) {
    return @"Peso em excesso";
  }
  else if (IMC >= 30.f && IMC <= 34.9f) {
    return @"Obesidade Grau I";
  }
  else if (IMC >= 35.f && IMC <= 39.9f) {
    return @"Obesidade Grau II";
  }
  else {
    return @"Obesidade Grau III";
  }
};
@end
