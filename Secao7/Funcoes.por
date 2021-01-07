programa
{
	
	funcao inicio()
	{
		faz_contagem(1, 10)

		faz_contagem(90, 100)

		faz_contagem(-10, 187)
	}

	funcao faz_contagem(inteiro valor_inicial, inteiro valor_final)
	{
		inteiro contador = valor_inicial
		enquanto (contador <= valor_final) {
			escreva(contador, "\n")
			contador++
		}
		escreva("\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 106; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */