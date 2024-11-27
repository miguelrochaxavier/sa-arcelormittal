
Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 27/11/2024

Var
   // Seção de Declarações das variáveis
   opcao: inteiro //Declaração das variáveis
   valorDespesa, fluxoCaixa, receitaAtual, saldoInicial: real
   custoVariaveis, despesasFixas, gastoInvestimentos: real

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   escreval ("Digite o saldo da empresa AcelorMittal: ") //Saldo da empresa para cálculos futuros
   leia (saldoInicial)
   fluxoCaixa<-saldoInicial //O fluxo inicial receberá o saldo recebido
   escreval ("Escolha uma opção: ") //Menu de opções
   escreval ("[1] Registrar despesa")
   escreval ("[2] Resgistrar receita prevista: ")
   escreval ("[3] Análise de fluxo de caixa: ")
   escreval ("[4] Sair")
   leia (opcao)

   se opcao = 1 entao //Estrutura se/então
      escreval ("Digite o valor da despesa: ")
      leia (valorDespesa)
      fluxoCaixa<-fluxoCaixa - valorDespesa //Cálculo para descontar o valor de uma despesa(utilizando o saldo recebido no começo)
      escreval ("Novo fluxo de caixa da empresa: ", fluxoCaixa)

   senao
      se opcao = 2 entao //Estrutura se/então
         escreval ("Digite o valor da receita prevista: ")
         leia (receitaAtual)//Registro dos valores previstos a serem arrecadados em um ano
         fluxoCaixa<-fluxoCaixa + receitaAtual //Soma do saldo + valor previsto
         escreval ("Novo fluxo de caixa da empresa: ", fluxoCaixa)

      senao
         se opcao = 3 entao //Estrutura se/então
            escreval ("Informe os gastos com os custos variáveis: ")//Gastos básicos de uma empresa
            leia (custoVariaveis)
            escreval ("Informe os gastos com as despesas fixas: ")//Gastos básicos de uma empresa
            leia (despesasFixas)
            escreval ("Informe os gastos com os investimentos: ")//Gastos básicos de uma empresa
            leia(gastoInvestimentos)
            escreval ("Saldo inicial: ", saldoInicial)//Saldo inicial recebido
            saldoInicial<- saldoInicial- (custoVariaveis + despesasFixas + gastoInvestimentos)//Saldo inicial - gastos básicos
            escreval ("Fluxo de caixa atual: ", saldoInicial)//Fluxo de caixa após os gastos básicos
            se fluxoCaixa < 0 entao //Para saber se o saldo da empresa é negativo ou positivo
               escreval ("Situação do fluxo de caixa da empresa: NEGATIVO!")
            senao
               escreval ("Situação do fluxo de caixa da empresa: POSITIVO!")
            fimse

         senao
            se opcao = 4 entao //Estrutura se/então
               escreval ("Você clicou na opção de sair.") //Última opção do menu
            fimse  //Para fechar as estruturas se/então utilizadas
         fimse
      fimse
   fimse
Fimalgoritmo
