programa
{
	// Desvios condicionais aninhados
	funcao inicio()
	{

		inteiro idade = 15
		
		se (idade >=18) {
			escreva("Maior de idade \n")
			se (idade > 65) {
				escreva("Já pode fazer a carteira de idoso! \n")	
			}
		}
		senao { //idade < 18
			se (idade < 10) {
				escreva("Você é uma criança, brinque! \n")
			}
			senao {
				escreva("Você é adolescente! \n")
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 92; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */