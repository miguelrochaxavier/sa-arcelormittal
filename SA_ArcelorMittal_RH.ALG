
Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 27/11/2024

Var
//Declaração de variáveis
   nomeFuncionario, candidato, result: caractere
   sb, he, desc, SalaBru, sl: real
   idade, experiencia, escola: inteiro

Inicio

//Campo para mostrar todas as informações sobre a gestão de folha de pagamento
   escreva("Digite o nome do funcionário: ")
   leia(nomeFuncionario)
   escreva("Digite o salário base do funcionário: ")
   leia(sb)
   escreva("Digite o valor das horas extras: ")
   leia(he)
   escreva("Digite o valor dos descontos: ")
   leia(desc)

   //contas para descobrir o salário bruto e o salário líquido
   SalaBru <- sb + he
   sl <- SalaBru - desc


   escreval("")
   escreval("Folha de Pagamento:")
   escreval("Nome do Funcionário: ", nomeFuncionario)
   escreval("Salário Base: R$ ", sb)
   escreval("Horas Extras: R$ ", he)
   escreval("Descontos: R$ ", desc)
   escreval("Salário Bruto: R$ ", SalaBru)
   escreval("Salário Líquido: R$ ", sl)

//Campo para descobrir as informações sobre recrutamento e seleção de novos funcionários.
   escreva("Digite o nome do candidato: ")
   leia(candidato)
   escreva("Digite a idade do candidato: ")
   leia(idade)
   escreva("Digite em anos a experiência  do candidato: ")
   leia(experiencia)
   escreval("Digite o nível de escolaridade")
   escreval("1-Ensino Médio, 2-Superior, 3-Pós-Graduação: ")
   leia(escola)

   //Condicional Se/então
   se (idade >=18) E (experiencia >=2) E (escola >=2) entao
      result <- "Candidato Aprovado"
   senao
      result <- "Candidato Reprovado"
   fimse

//Campo para mostrar as informações sobre recrutamento e seleção de novos funcionários e se foi aprovado para a vaga.
   escreval("")
   escreval("Seleção de Candidatos:")
   escreval("Nome do Candidato: ", candidato)
   escreval("Idade: ", idade)
   escreval("Experiência: ", experiencia, " anos")
   escreval("Escolaridade: ", escola)
   escreval("Resultado da Seleção: ", result)

Fimalgoritmo
