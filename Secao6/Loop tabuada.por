programa
{
	
	funcao inicio()
	{
		inteiro contador = 1
		inteiro tabuada = 2
		
		enquanto (tabuada < 10) {
			contador = 1
			enquanto (contador < 10) {
			escreva(contador, " X ", tabuada, " = ", contador * tabuada, "\n")
			contador++
		}
		escreva("\n")
		tabuada++
		
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 263; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {contador, 6, 10, 8}-{tabuada, 7, 10, 7};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */