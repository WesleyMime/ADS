programa {
  funcao inicio() {
    real primeiro, segundo, terceiro, quarto

    escreva("Nota do semestre 1: ")
    leia(primeiro)
    escreva("Nota do semestre 2: ")
    leia(segundo)
    escreva("Nota do semestre 3: ")
    leia(terceiro)
    escreva("Nota do semestre 4: ")
    leia(quarto)

    real media = calcularMedia(primeiro, segundo, terceiro, quarto)

    inteiro notaMinima = 6
    se (media >= notaMinima) {
      escreva("Aluno aprovado, nota:  " + media)
      retorne
    } senao { 
      escreva("Aluno reprovado, nota: " + media)
    }
  }

  funcao real calcularMedia(real primeiro, real segundo, real terceiro, real quarto) {
      inteiro semestres = 4
      real soma = primeiro + segundo + terceiro + quarto
      retorne soma / semestres
  }
}
