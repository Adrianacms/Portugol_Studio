programa
{
	inclua biblioteca Graficos
	inclua biblioteca Util
	inclua biblioteca Teclado
	inclua biblioteca Mouse

	const inteiro LARGURA_DA_TELA = 800
	const inteiro ALTURA_DA_TELA = 600

	inteiro tamanho_quadrado = 100
	inteiro quadrado_x = LARGURA_DA_TELA/2 - tamanho_quadrado/2 
	inteiro quadrado_y = ALTURA_DA_TELA/2 - tamanho_quadrado/2

	inteiro cor_quadrado = Graficos.COR_VERMELHO

	logico desenha_borda = falso
	
	// +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
	
	funcao processaLogica()
	{
		inteiro mouse_x = Mouse.posicao_x()
		inteiro mouse_y = Mouse.posicao_y()
		
		/* 
		  	Você só precisa substituir a condição do desvio condicional abaixo, 
		  	o resto do código já está programado! 

		  	As variáveis que você deve usar são:
		  		- mouse_x
		  		- mouse_y
		  		- quadrado_x
		  		- quadrado_y
		  		- tamanho_quadrado
		 */

		 logico horizontal =  mouse_x >= quadrado_x e  mouse_x <= quadrado_x + tamanho_quadrado
		 logico vertical =  mouse_y >= quadrado_y e  mouse_y <= quadrado_y + tamanho_quadrado
		 
		se (horizontal e vertical) { 
			desenha_borda = verdadeiro
		}
		senao {
			desenha_borda = falso
		}
	
	}
	
	// +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
	
	funcao desenha()
	{
		//desenha fundo
		Graficos.definir_cor(Graficos.COR_BRANCO)
		Graficos.desenhar_retangulo(0, 0, LARGURA_DA_TELA, ALTURA_DA_TELA, falso, verdadeiro)

		se (desenha_borda) {
			inteiro borda = 5
			Graficos.definir_cor(Graficos.COR_PRETO)
			Graficos.desenhar_retangulo(quadrado_x - borda, quadrado_y - borda, tamanho_quadrado + borda * 2, tamanho_quadrado + borda * 2, falso, verdadeiro)
		}

		//desenha quadrado
		Graficos.definir_cor(cor_quadrado)
		Graficos.desenhar_retangulo(quadrado_x, quadrado_y, tamanho_quadrado, tamanho_quadrado, falso, verdadeiro)

		//gera o gráfico na tela
		Graficos.renderizar()
	}
	
	funcao inicio()
	{
		//cria a janela 
		Graficos.iniciar_modo_grafico(verdadeiro)
		Graficos.definir_dimensoes_janela(800, 600)
		Graficos.definir_titulo_janela("Exercício de Lógica = Mouse over")
		
		enquanto( nao Teclado.tecla_pressionada(Teclado.TECLA_ESC) ){
			processaLogica()
			desenha()
			Util.aguarde(1000/30)
		}
	}

}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1079; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {quadrado_x, 12, 9, 10}-{desenha_borda, 17, 8, 13}-{mouse_x, 23, 10, 7};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */