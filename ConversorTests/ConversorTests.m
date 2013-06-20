#import "Kiwi.h"
#import "CESConversorComprimento.h"

SPEC_BEGIN(ConversorTests)

describe(@"\n\n\nTeste unitário", ^{
  
  __block CESConversorComprimento *objConversorComprimento;
  
  beforeAll(^{
    objConversorComprimento = [[CESConversorComprimento alloc] init];
  });
  
  context(@"Teste da Unidade Centimetro", ^{

    it(@"Dado que um valor de Centimetro, devemos retornar a quantidade de Metro", ^{
      float centimento = [objConversorComprimento centimetroParaMetro:100];
      [[theValue(centimento) should] equal:theValue(1)];
    });
  });
  
  
  context(@"Teste da Unidade Metro", ^{

    it(@"Dado que um valor de Metro, devemos retornar o valor equivalente em centimetro", ^{
      float metro = [objConversorComprimento metroParaCentimetro:1];
      [[theValue(metro) should] equal:theValue(100)];
    });
  });
  
  
  pending_(@"Teste de um metodo que ainda irei implementar", ^{});
  
});


describe(@"\n\n\nTeste de comportamento", ^{
  
  __block CESConversorComprimento *objConversorComprimento;
  
  beforeAll(^{
    objConversorComprimento = [[CESConversorComprimento alloc] init];
  });
  
  context(@"Cadastro de IMC", ^{
    
    it(@"Dado que um usuário realize o cadastro de IMC, o sistema retorna com mensagem de sucesso", ^{

      NSString *message = [objConversorComprimento isIMCCreated];
      [[theValue(message) shouldNot] equal:@"Cadastro de IMC falhou"];
    });
  });
  

});
         

SPEC_END

// beforeAll

// should
// be
