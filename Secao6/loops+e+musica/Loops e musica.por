programa
{
	inclua biblioteca Sons
	inclua biblioteca Util
	
	funcao inicio()
	{
		inteiro bumbo = Sons.carregar_som("bumbo.mp3")
		inteiro caixa = Sons.carregar_som("caixa.mp3")
		inteiro chimbal = Sons.carregar_som("chimbal.mp3")

		inteiro metronomo = 0

		enquanto (metronomo < 40) {
			Sons.reproduzir_som(chimbal, falso)
			se (metronomo % 2 == 0){
				Sons.reproduzir_som(bumbo, falso)
			}
			senao {
				Sons.reproduzir_som(caixa, falso)
			}
			
			metronomo++

			Util.aguarde(500)
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 455; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */