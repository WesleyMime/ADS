# Pede que o usuário digite notas e retorna uma lista com todas as notas
def adicionar_notas():
    notas = []

    while True:
        nota = input("Digite a nota: ('q' para sair) ")
        # Termina de pedir mais notas caso o usuário tenha digitado 'q'
        if nota == 'q':
            break

        # Tenta transformar a nota digitada pelo usuário de string para float
        try:
            nota = float(nota)
        # Erro caso o usuário digite letras, símbolos ou números decimais com vírgula
        except ValueError:
            print("Digite somente números")
            continue

        # Checa se o usuário não digitou uma nota inválida
        if nota < 0 or nota > 10:
            print("Digite notas entre 0 e 10")
            continue

        notas.append(nota)
    return notas

# Calcula a média das notas dentro da lista
def calcular_media(notas: list):
    quantidade_notas = len(notas)
    # Caso o usuário não tenha digitado nenhuma nota
    if quantidade_notas == 0:
        return 0

    # Soma todas as notas dentro da lista
    soma = sum(notas)
    media = soma / quantidade_notas

    # Arredonda a média para duas casas decimais
    return round(media, 2)

# Mostra ao usuário as notas, a média e a situação
def relatorio(notas: list, media: float):
    print(f"Notas: {notas}")
    print(f"Média: {media}")
    # Se a média for maior ou igual a 7, o aluno é aprovado
    if media >=7:
        print("Aprovado")
    # Se a média for menor que 7, o aluno é reprovado
    else:
        print("Reprovado")

# Executa os métodos acima
notas = adicionar_notas()
media = calcular_media(notas)
relatorio(notas, media)
