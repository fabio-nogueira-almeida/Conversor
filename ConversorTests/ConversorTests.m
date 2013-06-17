#import "Kiwi.h"
#import "TKConversorComprimento.h"

SPEC_BEGIN(ConversorTests)

describe(@"\n\n\nTeste de unidades de comprimento", ^{
  
  __block TKConversorComprimento *objConversorComprimento;
  
  beforeAll(^{
    objConversorComprimento = [[TKConversorComprimento alloc] init];
  });
  
  context(@"Teste da Unidade Centimetro", ^{

    it(@"Centimetro para Metro", ^{
      float centimento = [objConversorComprimento centimetroParaMetro:100];
      [[theValue(centimento) should] equal:theValue(1)];
    });
  });
  
  
  context(@"Teste da Unidade Metro", ^{

    it(@"Metro para centimetro", ^{
      float metro = [objConversorComprimento metroParaCentimetro:1];
      [[theValue(metro) should] equal:theValue(100)];
    });
  });
  
  
  pending_(@"Teste de um metodo que ainda irei implementar", ^{});
  
});

SPEC_END

// beforeAll

// should
// be
