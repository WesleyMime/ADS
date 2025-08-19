programa {
  inclua biblioteca Tipos

  funcao inicio() {
    cadeia primeiroCadeia, segundoCadeia, terceiroCadeia, quartoCadeia

    logico valido = falso
    enquanto (nao valido) {
      escreva("Nota do semestre 1: ")
      leia(primeiroCadeia)
      valido = notaValida(primeiroCadeia)
    }
    valido = falso
    enquanto (nao valido) {
      escreva("Nota do semestre 2: ")
      leia(segundoCadeia)
      valido = notaValida(segundoCadeia)
    }
    valido = falso
    enquanto (nao valido) {
      escreva("Nota do semestre 3: ")
      leia(terceiroCadeia)
      valido = notaValida(terceiroCadeia)
    }
    valido = falso
    enquanto (nao valido) { 
      escreva("Nota do semestre 4: ")
      leia(quartoCadeia)
      valido = notaValida(quartoCadeia)
    }
    real primeiro = Tipos.cadeia_para_real(primeiroCadeia)
    real segundo = Tipos.cadeia_para_real(segundoCadeia)
    real terceiro = Tipos.cadeia_para_real(terceiroCadeia)
    real quarto = Tipos.cadeia_para_real(quartoCadeia)

    real media = calcularMedia(primeiro, segundo, terceiro, quarto)

    inteiro notaMinima = 6
    se (media >= notaMinima) {
      escreva("Aluno aprovado, nota:  " + media)
    } senao { 
      escreva("Aluno reprovado, nota: " + media)
    }
  }

  funcao real calcularMedia(real primeiro, real segundo, real terceiro, real quarto) {
      inteiro semestres = 4
      real soma = primeiro + segundo + terceiro + quarto
      retorne soma / semestres
  }

  funcao logico notaValida(cadeia nota) {
    retorne Tipos.cadeia_e_inteiro(nota, 10) ou Tipos.cadeia_e_real(nota)
  }
}
