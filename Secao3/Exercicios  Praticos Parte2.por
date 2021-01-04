programa
{

	/*
	 * 	Exercício2 - Solicitar para o usuário os gastos mensais com água, 
	 * 	energia e telefone e exibir o total.
	 */
	
	funcao inicio()
	{
		real agua = 10.0
		real energia = 10.0
		real telefone = 10.0

		escreva("Digite o valor da conta de água: ")
		leia(agua)

		escreva("Digite o valor da conta de energia: ")
		leia(energia)

		escreva("Digite o valor da conta de telefone: ")
		leia(telefone)
		
		escreva("O total das contas é: ", agua + energia + telefone)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 401; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */