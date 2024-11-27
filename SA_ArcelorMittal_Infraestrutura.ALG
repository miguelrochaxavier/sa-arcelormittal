
Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 27/11/2024

Tipo
   equipamento = registro
      id: inteiro
      nome: caractere
      status: caractere
      necessidade_manuntencao: logico
   fimregistro

Var
   // Seção de Declarações das variáveis
   equipamentos: vetor[0..10] de equipamento
   i : inteiro
   num_equipamento : inteiro
   opc : caractere
procedimento adicionar_equipamentos(id, indice: inteiro; nome: caractere)
var
   i: inteiro
inicio
   se equipamentos[indice].id = 0 entao
      equipamentos[indice].id := id
      equipamentos[indice].nome := nome
      equipamentos[indice].status := "Disponível"  // Corrigido grafia
      equipamentos[indice].necessidade_manuntencao := falso
      escreval("Equipamento adicionado ao inventário: ", nome)
   fimse
fimprocedimento

procedimento atualizar_status(id: inteiro; novo_status: caractere)  // Corrigido para 'caractere'
var
   i: inteiro
inicio
   se equipamentos[i].id = id entao
      equipamentos[i].status := novo_status
      se novo_status = "Em manutenção, aguarde um momento!" entao // Corrigido para comparação
         equipamentos[i].necessidade_manuntencao := verdadeiro
      senao
         equipamentos[i].necessidade_manuntencao := falso
      fimse
      escreval("Status do equipamento ", equipamentos[i].nome, " atualizado para ", novo_status)  // Corrigido para espaço
   fimse
fimprocedimento

procedimento alocar_recursos(id: inteiro; quantidade: inteiro)
inicio
   escreval("Recursos alocados para o equipamento com ID: ", id, ". Quantidade: ", quantidade)
fimprocedimento

procedimento analisar_processos()
inicio
   escreval("Analisando processos produtivos...")
   escreval("Sugestões de melhorias: Aumentar a eficiência em X%.")  // Removido o 'empresa' não declarado
fimprocedimento

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   num_equipamento<-randi(5)+1

   escreval("Deseja acessar o sistema de manutenção da empresa ArcelorMittal? ")
   leia(opc)

   se opc = "sim" entao
      adicionar_equipamentos(1023, 0, "Prensa Hidráulica")
      adicionar_equipamentos(1065, 1, "Barra de aço")
      adicionar_equipamentos(2062, 2, "Ferro")
      adicionar_equipamentos(1357, 3, "Metal acriloco")
      adicionar_equipamentos(1942, 4, "Metal líquido")

      atualizar_status(1, "Em manutenção!")
      atualizar_status(2, "Dispónivel")
      atualizar_status(3, "Dispónivel")
      atualizar_status(4, "Em manutenção!")
      atualizar_status(5, "Em manutenção!")
      alocar_recursos(num_equipamento, 5)

      analisar_processos()
      escreval("Aguarde um instante...")

      limpatela

      escreval("Status geral do(s) equipamento(s): ")
      para i de 0 ate 10 passo 1 faca

         se equipamentos[i].id > 0 entao
            escreval("ID: ", equipamentos[i].id)
            escreval("Nome: ", equipamentos[i].nome)
            escreval("Status: ", equipamentos[i].status)
         fimse
      fimpara
   fimse

   se opc = "nao" entao
      limpatela
      escreval("Programa finalizado!")
   fimse
Fimalgoritmo
