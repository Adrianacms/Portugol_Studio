programa
{
	inclua biblioteca Util
	
	funcao inicio()
	{
		inteiro valor = Util.sorteia(0, 100)

		escreva("Valor sorteado: ", valor, "\n")
		se ( valor % 2 == 0 ){
			escreva("cara \n")
		}
		senao{
			escreva("coroa \n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 143; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */