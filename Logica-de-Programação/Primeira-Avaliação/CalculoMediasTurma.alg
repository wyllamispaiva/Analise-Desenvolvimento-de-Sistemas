Algoritmo "Calculo de Medias por disciplina e medias da turma"
// Descrição: Este programa calcula as médias de notas de
//várias disciplinas em uma turma e a média geral da
// turma.
// Autor: Wyllamis Guimaraes PAiva
// Data: 01/10/2023

Var
   reprovados, final, aprovados, qtdDisciplinas, disciplina, qtdAlunos, alunos: Inteiro
   primeiraNota, mediaAluno, somatorioMedias, mediaGeralTurma, mediaGeral, mediaTurma, mediaDisciplina, segundaNota, maiorMedia, menorMedia: Real
   nomeDaTurma, nomeDisciplina: Caractere

Inicio
   Escreval("Digite o nome da turma: ")
   Leia(nomeDaTurma)
   Escreval("Digite a quantidade de disciplinas da turma: ")
   Leia(qtdDisciplinas)

   mediaGeral := 0 // Inicializa a média geral da turma
    somatorioMedias := 0
   para disciplina de 1 até qtdDisciplinas faça

      maiorMedia := 0 //  maior média para a nova disciplina
      menorMedia := 11 //  menor média para a nova disciplina

      mediaDisciplina := 0
      aprovados := 0 
      reprovados := 0 
      final := 0 

      Escreval("Digite o nome da disciplina: ")
      Leia(nomeDisciplina)
      Escreval("Digite a quantidade de alunos: ")
      Leia(qtdAlunos)

      para alunos de 1 até qtdAlunos faça

         Escreval("Digite a primeira nota do aluno: ")
         Leia(primeiraNota)
         Escreval("Digite a segunda nota do Aluno: ")
         Leia(segundaNota)
         mediaAluno := (primeiraNota + segundaNota) / 2
         mediaDisciplina := mediaDisciplina + mediaAluno
         se mediaAluno < 4 entao
            Escreval("Reprovado por média")
            reprovados := reprovados + 1
         senão
            se mediaAluno < 7 entao
               Escreval("Aguardando final")
               final := final + 1
            senão
               se mediaAluno >= 7 entao
                  Escreval("Aprovado por média")
                  aprovados := aprovados + 1
               fimse
            fimse
         fimse

         se mediaAluno > maiorMedia entao
            maiorMedia := mediaAluno
         fimse

         se mediaAluno < menorMedia entao
            menorMedia := mediaAluno
         fimse

      fimpara
      mediaTurma := mediaDisciplina / qtdAlunos
      somatorioMedias :=somatorioMedias+  mediaTurma


      Escreval("#### RESUMO DA DISCIPLINA ####")
      Escreval("")
      Escreval("QTD TOTAL DE ALUNOS:", qtdAlunos)
      Escreval("Disciplina:", nomeDisciplina)
      Escreval("MÉDIA GERAL DA DISCIPLINA:", mediaTurma)
      Escreval("MAIOR MÉDIA DA DISCIPLINA:", maiorMedia)
      Escreval("MENOR MÉDIA DA DISCIPLINA:", menorMedia)
      Escreval("QTD ALUNOS REPROVADOS:", reprovados)
      Escreval("QTD ALUNOS NA FINAL:", final)
      Escreval("QTD ALUNOS APROVADOS:", aprovados)
        Escreval("")



   fimpara

   // média geral da turma após o loop de disciplinas
   mediaGeral := somatorioMedias / qtdDisciplinas
  Escreval("")
   Escreval("#### RESUMO DA TURMA ####")
     Escreval("")
   Escreval("TURMA:", nomeDaTurma)
   Escreval("QTD DE DISCIPLINAS:", qtdDisciplinas)
   Escreval("MÉDIA GERAL DA TURMA:", mediaGeral)

Fimalgoritmo
