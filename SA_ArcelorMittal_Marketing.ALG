
Algoritmo "semnome"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 27/11/2024

var
   orcamento_da_campanha: Inteiro//Declara��o de Vari�veis
   canais_de_marketing: Vetor[1..3] de Caractere//Declara��o de Vari�veis
   canal: Caractere//Declara��o de Vari�veis
   orcamento_alocado: Inteiro//Declara��o de Vari�veis
   anuncio: Caractere //Declara��o de Vari�veis
   i: Inteiro //Declara��o de Vari�veis
   resposta: Caractere//Declara��o de Vari�veis
   campanha: Caractere//Declara��o de Vari�veis

funcao Alocar_orcamento(canal: Caractere; orcamento: Inteiro): Inteiro
inicio
   escreval("Alocando or�amento para ", canal, " com valor de ", orcamento)
   retorne orcamento
fimfuncao //Declara��o de uma FUN��O que ser� utilizada.

funcao Criar_anuncio(canal: Caractere): Caractere//FUN��O
inicio
   se canal = "redes sociais" ent�o// Condicional SE/ENT�O
      escreval("Criando an�ncio para Redes Sociais")
   fimse //Finaliza��o Obrigat�ria
   se canal = "TV" ent�o // Condicional SE/ENT�O
      escreval("Criando an�ncio para TV")
   fimse //Finaliza��o Obrigat�ria
   se canal = "r�dio" ent�o // Condicional SE/ENT�O
      escreval("Criando an�ncio para R�dio")
   fimse  //Finaliza��o Obrigat�ria
   retorne "An�ncio Criado"
fimfuncao //Finaliza��o Obrigat�ria

procedimento Publicar_anuncio(canal: Caractere)//PROCEDIMENTO
inicio
   se canal = "redes sociais" ent�o // Condicional SE/ENT�O
      escreval("Publicando an�ncio nas Redes Sociais")
   fimse //Finaliza��o Obrigat�ria
   se canal = "TV" ent�o // Condicional SE/ENT�O
      escreval("Exibindo an�ncio na TV")
   fimse //Finaliza��o Obrigat�ria
   se canal = "r�dio" ent�o // Condicional SE/ENT�O
      escreval("Tocando an�ncio na r�dio")
   fimse //Finaliza��o Obrigat�ria
fimprocedimento //Finaliza��o Obrigat�ria

procedimento Monitorar_eficacia(campanha: Caractere)//PROCEDIMENTO
inicio
   escreval("Monitorando efic�cia da campanha")
   se campanha = "bem-sucedida" ent�o // Condicional SE/ENT�O
      escreval("A campanha foi bem-sucedida")
   sen�o
      escreval("A campanha n�o foi bem-sucedida, ajustando estrat�gia")
   fimse //Finaliza��o Obrigat�ria
fimprocedimento //Finaliza��o Obrigat�ria

Inicio
   orcamento_da_campanha <- 10000 //Declara��o de Valores Fixos
   canais_de_marketing[1] <- "redes sociais"  //Declara��o de Valores Fixos
   canais_de_marketing[2] <- "TV"  //Declara��o de Valores Fixos
   canais_de_marketing[3] <- "r�dio"  //Declara��o de Valores Fixos

   escreval("Escolha um canal de marketing para a campanha:")
   escreval("1 - Redes Sociais")
   escreval("2 - TV")
   escreval("3 - R�dio")
   escreva("Digite sua escolha: ")
   leia(resposta) //Leitura da DECIS�O

   se resposta = "1" ent�o // Condicional SE/ENT�O
      canal <- canais_de_marketing[1]
   sen�o
      se resposta = "2" ent�o // Condicional SE/ENT�O
         canal <- canais_de_marketing[2]
      sen�o
         se resposta = "3" ent�o // Condicional SE/ENT�O
            canal <- canais_de_marketing[3]
         sen�o
            escreval("Op��o inv�lida. Escolha 1, 2 ou 3.")
         fimse //Finaliza��o Obrigat�ria
      fimse //Finaliza��o Obrigat�ria
   fimse//Finaliza��o Obrigat�ria

   orcamento_alocado <- Alocar_orcamento(canal, orcamento_da_campanha)
   anuncio <- Criar_anuncio(canal)
   Publicar_anuncio(canal)
   escreva("A campanha foi bem-sucedida?: ")
   leia(campanha)

   se campanha = "sim" ent�o // Condicional SE/ENT�O
      Monitorar_eficacia("bem-sucedida")//An�lise de PROCEDIMENTO
   sen�o
      Monitorar_eficacia("n�o bem-sucedida")//An�lise de PROCEDIMENTO
   fimse //Finaliza��o Obrigat�ria
FimAlgoritmo
