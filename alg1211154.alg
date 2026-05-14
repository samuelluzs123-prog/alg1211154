Algoritmo "Sistema_Notas"

Var
   notas: vetor[1..50] de real
   i, qtd: inteiro
   media: real

Procedimento calcularMedia(quantidade: inteiro)
Var
   soma: real
   j: inteiro
Inicio
   soma <- 0

   Para j de 1 ate quantidade faca
      soma <- soma + notas[j]
   FimPara

   media <- soma / quantidade
FimProcedimento

Inicio

   escreva("Quantos alunos deseja cadastrar (max 50)? ")
   leia(qtd)

   enquanto (qtd <= 0) ou (qtd > 50) faca
      escreva("Valor invalido! Digite novamente: ")
      leia(qtd)
   fimenquanto

   Para i de 1 ate qtd faca
      escreva("Digite a nota do aluno ", i, ": ")
      leia(notas[i])
   FimPara

   calcularMedia(qtd)

   escreval("Media da turma: ", media:0:2)

   se media >= 6 entao
      escreval("Situacao: APROVADO")
   senao
      escreval("Situacao: REPROVADO")
   fimse

Fimalgoritmo
