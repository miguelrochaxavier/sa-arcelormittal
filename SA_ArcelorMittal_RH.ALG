
Algoritmo "semnome"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 27/11/2024

Var
//Declara��o de vari�veis
   nomeFuncionario, candidato, result: caractere
   sb, he, desc, SalaBru, sl: real
   idade, experiencia, escola: inteiro

Inicio

//Campo para mostrar todas as informa��es sobre a gest�o de folha de pagamento
   escreva("Digite o nome do funcion�rio: ")
   leia(nomeFuncionario)
   escreva("Digite o sal�rio base do funcion�rio: ")
   leia(sb)
   escreva("Digite o valor das horas extras: ")
   leia(he)
   escreva("Digite o valor dos descontos: ")
   leia(desc)

   //contas para descobrir o sal�rio bruto e o sal�rio l�quido
   SalaBru <- sb + he
   sl <- SalaBru - desc


   escreval("")
   escreval("Folha de Pagamento:")
   escreval("Nome do Funcion�rio: ", nomeFuncionario)
   escreval("Sal�rio Base: R$ ", sb)
   escreval("Horas Extras: R$ ", he)
   escreval("Descontos: R$ ", desc)
   escreval("Sal�rio Bruto: R$ ", SalaBru)
   escreval("Sal�rio L�quido: R$ ", sl)

//Campo para descobrir as informa��es sobre recrutamento e sele��o de novos funcion�rios.
   escreva("Digite o nome do candidato: ")
   leia(candidato)
   escreva("Digite a idade do candidato: ")
   leia(idade)
   escreva("Digite em anos a experi�ncia  do candidato: ")
   leia(experiencia)
   escreval("Digite o n�vel de escolaridade")
   escreval("1-Ensino M�dio, 2-Superior, 3-P�s-Gradua��o: ")
   leia(escola)

   //Condicional Se/ent�o
   se (idade >=18) E (experiencia >=2) E (escola >=2) entao
      result <- "Candidato Aprovado"
   senao
      result <- "Candidato Reprovado"
   fimse

//Campo para mostrar as informa��es sobre recrutamento e sele��o de novos funcion�rios e se foi aprovado para a vaga.
   escreval("")
   escreval("Sele��o de Candidatos:")
   escreval("Nome do Candidato: ", candidato)
   escreval("Idade: ", idade)
   escreval("Experi�ncia: ", experiencia, " anos")
   escreval("Escolaridade: ", escola)
   escreval("Resultado da Sele��o: ", result)

Fimalgoritmo
