programa
{
	
	funcao inicio()
	{
		real nivel = 8.5
		
		se(nivel > 0 e nivel < 4){
			escreva("Estado de Vigilância! \n")
		}
		se(nivel >= 4 e nivel < 6){
			escreva("Estado de Atenção! \n")
		}
		se(nivel >= 6 e nivel < 8){
			escreva("Estado de Alerta! \n")
		}
		se(nivel >= 8){
			escreva("Estado de Prontidão! \n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 285; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */