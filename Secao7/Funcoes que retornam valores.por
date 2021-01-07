programa
{
	//inteiro contador = 0 //variável global
	
	funcao inicio()
	{
		inteiro contador = 0 //variável local
		enquanto(contador < 3) {
			real p, a
			leia(p, a)
			real imc = calcula_imc(p, a)
			escreva("O seu imc é: ", imc, "\n")

			contador++
		}
	}

	funcao real calcula_imc(real peso, real altura)
	{
		real imc = peso/ (altura * altura) //variáveis locais

		retorne imc
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 16; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */