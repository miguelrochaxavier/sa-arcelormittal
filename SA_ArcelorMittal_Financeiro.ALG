
Algoritmo "semnome"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 27/11/2024

Var
   // Se��o de Declara��es das vari�veis
   opcao: inteiro //Declara��o das vari�veis
   valorDespesa, fluxoCaixa, receitaAtual, saldoInicial: real
   custoVariaveis, despesasFixas, gastoInvestimentos: real

Inicio
   // Se��o de Comandos, procedimento, fun��es, operadores, etc...
   escreval ("Digite o saldo da empresa AcelorMittal: ") //Saldo da empresa para c�lculos futuros
   leia (saldoInicial)
   fluxoCaixa<-saldoInicial //O fluxo inicial receber� o saldo recebido
   escreval ("Escolha uma op��o: ") //Menu de op��es
   escreval ("[1] Registrar despesa")
   escreval ("[2] Resgistrar receita prevista: ")
   escreval ("[3] An�lise de fluxo de caixa: ")
   escreval ("[4] Sair")
   leia (opcao)

   se opcao = 1 entao //Estrutura se/ent�o
      escreval ("Digite o valor da despesa: ")
      leia (valorDespesa)
      fluxoCaixa<-fluxoCaixa - valorDespesa //C�lculo para descontar o valor de uma despesa(utilizando o saldo recebido no come�o)
      escreval ("Novo fluxo de caixa da empresa: ", fluxoCaixa)

   senao
      se opcao = 2 entao //Estrutura se/ent�o
         escreval ("Digite o valor da receita prevista: ")
         leia (receitaAtual)//Registro dos valores previstos a serem arrecadados em um ano
         fluxoCaixa<-fluxoCaixa + receitaAtual //Soma do saldo + valor previsto
         escreval ("Novo fluxo de caixa da empresa: ", fluxoCaixa)

      senao
         se opcao = 3 entao //Estrutura se/ent�o
            escreval ("Informe os gastos com os custos vari�veis: ")//Gastos b�sicos de uma empresa
            leia (custoVariaveis)
            escreval ("Informe os gastos com as despesas fixas: ")//Gastos b�sicos de uma empresa
            leia (despesasFixas)
            escreval ("Informe os gastos com os investimentos: ")//Gastos b�sicos de uma empresa
            leia(gastoInvestimentos)
            escreval ("Saldo inicial: ", saldoInicial)//Saldo inicial recebido
            saldoInicial<- saldoInicial- (custoVariaveis + despesasFixas + gastoInvestimentos)//Saldo inicial - gastos b�sicos
            escreval ("Fluxo de caixa atual: ", saldoInicial)//Fluxo de caixa ap�s os gastos b�sicos
            se fluxoCaixa < 0 entao //Para saber se o saldo da empresa � negativo ou positivo
               escreval ("Situa��o do fluxo de caixa da empresa: NEGATIVO!")
            senao
               escreval ("Situa��o do fluxo de caixa da empresa: POSITIVO!")
            fimse

         senao
            se opcao = 4 entao //Estrutura se/ent�o
               escreval ("Voc� clicou na op��o de sair.") //�ltima op��o do menu
            fimse  //Para fechar as estruturas se/ent�o utilizadas
         fimse
      fimse
   fimse
Fimalgoritmo
