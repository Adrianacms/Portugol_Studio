programa
{
	
	funcao inicio()
	{
		real peso = 63.0
		real altura = 1.73

		real imc = peso / (altura * altura)
		
		escreva("Seu IMC é: ", imc, "\n")

		se (imc < 16) {
			escreva("Você está com magreza grave! \n")
		}
		se (imc >= 16 e imc < 17) {
			escreva("Você está com magreza moderada! \n")
		}
		se (imc >= 17 e imc < 18.5) {
			escreva("Você está com magreza leve! \n")
		}
		se (imc >= 18.5 e imc < 25) {
			escreva("Você está saudável! \n")
		}
		se (imc >= 25 e imc < 30) {
			escreva("Você está com sobrepeso! \n")
		}
		se (imc >= 30 e imc < 35) {
			escreva("Você está com obesidade de Grau I! \n")
		}
		se (imc >= 35 e imc < 40) {
			escreva("Você está com obesidade de Grau II! \n")
		}
		se (imc >= 40) {
			escreva("Você está com obesidade mórbida, ou de Grau III! \n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 49; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */