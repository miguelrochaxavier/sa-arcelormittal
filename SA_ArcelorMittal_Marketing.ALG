
Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 27/11/2024

var
   orcamento_da_campanha: Inteiro//Declaração de Variáveis
   canais_de_marketing: Vetor[1..3] de Caractere//Declaração de Variáveis
   canal: Caractere//Declaração de Variáveis
   orcamento_alocado: Inteiro//Declaração de Variáveis
   anuncio: Caractere //Declaração de Variáveis
   i: Inteiro //Declaração de Variáveis
   resposta: Caractere//Declaração de Variáveis
   campanha: Caractere//Declaração de Variáveis

funcao Alocar_orcamento(canal: Caractere; orcamento: Inteiro): Inteiro
inicio
   escreval("Alocando orçamento para ", canal, " com valor de ", orcamento)
   retorne orcamento
fimfuncao //Declaração de uma FUNÇÃO que será utilizada.

funcao Criar_anuncio(canal: Caractere): Caractere//FUNÇÃO
inicio
   se canal = "redes sociais" então// Condicional SE/ENTÃO
      escreval("Criando anúncio para Redes Sociais")
   fimse //Finalização Obrigatória
   se canal = "TV" então // Condicional SE/ENTÃO
      escreval("Criando anúncio para TV")
   fimse //Finalização Obrigatória
   se canal = "rádio" então // Condicional SE/ENTÃO
      escreval("Criando anúncio para Rádio")
   fimse  //Finalização Obrigatória
   retorne "Anúncio Criado"
fimfuncao //Finalização Obrigatória

procedimento Publicar_anuncio(canal: Caractere)//PROCEDIMENTO
inicio
   se canal = "redes sociais" então // Condicional SE/ENTÃO
      escreval("Publicando anúncio nas Redes Sociais")
   fimse //Finalização Obrigatória
   se canal = "TV" então // Condicional SE/ENTÃO
      escreval("Exibindo anúncio na TV")
   fimse //Finalização Obrigatória
   se canal = "rádio" então // Condicional SE/ENTÃO
      escreval("Tocando anúncio na rádio")
   fimse //Finalização Obrigatória
fimprocedimento //Finalização Obrigatória

procedimento Monitorar_eficacia(campanha: Caractere)//PROCEDIMENTO
inicio
   escreval("Monitorando eficácia da campanha")
   se campanha = "bem-sucedida" então // Condicional SE/ENTÃO
      escreval("A campanha foi bem-sucedida")
   senão
      escreval("A campanha não foi bem-sucedida, ajustando estratégia")
   fimse //Finalização Obrigatória
fimprocedimento //Finalização Obrigatória

Inicio
   orcamento_da_campanha <- 10000 //Declaração de Valores Fixos
   canais_de_marketing[1] <- "redes sociais"  //Declaração de Valores Fixos
   canais_de_marketing[2] <- "TV"  //Declaração de Valores Fixos
   canais_de_marketing[3] <- "rádio"  //Declaração de Valores Fixos

   escreval("Escolha um canal de marketing para a campanha:")
   escreval("1 - Redes Sociais")
   escreval("2 - TV")
   escreval("3 - Rádio")
   escreva("Digite sua escolha: ")
   leia(resposta) //Leitura da DECISÃO

   se resposta = "1" então // Condicional SE/ENTÃO
      canal <- canais_de_marketing[1]
   senão
      se resposta = "2" então // Condicional SE/ENTÃO
         canal <- canais_de_marketing[2]
      senão
         se resposta = "3" então // Condicional SE/ENTÃO
            canal <- canais_de_marketing[3]
         senão
            escreval("Opção inválida. Escolha 1, 2 ou 3.")
         fimse //Finalização Obrigatória
      fimse //Finalização Obrigatória
   fimse//Finalização Obrigatória

   orcamento_alocado <- Alocar_orcamento(canal, orcamento_da_campanha)
   anuncio <- Criar_anuncio(canal)
   Publicar_anuncio(canal)
   escreva("A campanha foi bem-sucedida?: ")
   leia(campanha)

   se campanha = "sim" então // Condicional SE/ENTÃO
      Monitorar_eficacia("bem-sucedida")//Análise de PROCEDIMENTO
   senão
      Monitorar_eficacia("não bem-sucedida")//Análise de PROCEDIMENTO
   fimse //Finalização Obrigatória
FimAlgoritmo
