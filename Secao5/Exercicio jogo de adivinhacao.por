programa
{
	
	funcao inicio()
	{
		escreva("Pensar em um número de 1 até 8 \n")

		caracter resposta 

		escreva("O número é menor que 5? \n")
		leia(resposta)

		se (resposta == 's') { // 1 até 4

			escreva("O número é maior que 2? \n")
			leia(resposta)

			se (resposta == 's') { // 3 ou 4
				escreva("O número é a raiz quadrada de 16? \n")
				leia(resposta)
				se (resposta == 's') {
					escreva("Você pensou no número 4! \n")
				}
				senao {
					escreva("Você pensou no número 3! \n")
				}
			}
			senao { // 1 ou 2
				escreva("O número é par? \n")
				leia(resposta)

				se (resposta == 's') {
					escreva("Você pensou no número 2! \n")
				}
				senao {
					escreva("Você pensou no número 1! \n")
				}
			}
		}
		senao { // 5 a 8
			escreva("O número é maior que 6? \n")
			leia(resposta)

			se (resposta == 's') { // 7 ou 8
				escreva("O número é par? \n")
				leia(resposta)
				se (resposta == 's') {
					escreva("Você pensou no número 8! \n")
				}
				senao {
					escreva("Você pensou no número 7! \n")
				}
			}
			senao { // 5 ou 6
				escreva("O número é par? \n")
				leia(resposta)

				se (resposta == 's') {
					escreva("Você pensou no número 6! \n")
				}
				senao {
					escreva("Você pensou no número 5! \n")
				}
			}
		
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1271; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */