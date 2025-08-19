programa {
  inclua biblioteca Tipos

  const inteiro QUANTIDADE_SEMESTRES = 4

  funcao inicio() {
    cadeia notasCadeia[QUANTIDADE_SEMESTRES]
    real notas[QUANTIDADE_SEMESTRES]
    
    para (inteiro i = 0; i < QUANTIDADE_SEMESTRES; i++) {
      logico valido = falso
      enquanto (nao valido) {
        cadeia nota
        escreva("Nota do semestre " + (i+1) + ": ")
        leia(nota)
        valido = notaValida(nota)
        notasCadeia[i] = nota
      }
    }

    notas = converterNotasParaReal(notasCadeia, notas)

    real media = calcularMedia(notas)

    inteiro notaMinima = 6
    se (media >= notaMinima) {
      escreva("Aluno aprovado, nota:  " + media)
      retorne
    }    
    escreva("Aluno reprovado, nota: " + media)
  }

  funcao logico notaValida(cadeia nota) {
    retorne Tipos.cadeia_e_inteiro(nota, 10) ou Tipos.cadeia_e_real(nota)
  }

  funcao real converterNotasParaReal(cadeia notasCadeia[], real notas[]) {
    para (inteiro i = 0; i < QUANTIDADE_SEMESTRES; i++) {
      notas[i] = Tipos.cadeia_para_real(notasCadeia[i])
    }
    retorne notas
  }

  funcao real calcularMedia(real notas[]) {
    real soma = 0
    para (inteiro i = 0; i < QUANTIDADE_SEMESTRES; i++) {
      soma += notas[i]
    }
    retorne soma / QUANTIDADE_SEMESTRES
  }
}
