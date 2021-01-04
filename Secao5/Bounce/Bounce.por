programa
{
	inclua biblioteca Graficos --> g
	inclua biblioteca Util --> u
	inclua biblioteca Teclado --> t

	const inteiro COR_DE_FUNDO = 0xEEEEEE
	const inteiro COR_DA_BOLA = 0xFF1020
	

	inteiro VELOCIDADE_DO_JOGO = 1000/60 //aproximadamente 60 quadros por segundo
	
	//+++++++++  Variáveis e constantes que serão utilizadas ++++++++++++ 	
	const inteiro LARGURA_DA_TELA = 600
	const inteiro ALTURA_DA_TELA = 300
	const inteiro TAMANHO_DA_BOLA = 20
	
	inteiro bola_x = 0 
	inteiro bola_y = ALTURA_DA_TELA/2 // a bola inicia no centro da tela

	logico indo_pra_direita = verdadeiro
	logico indo_pra_baixo = verdadeiro
	
	//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
	funcao processaLogica()
	{
		// movimentação da bola na horizontal
		se (indo_pra_direita) {
			bola_x = bola_x + 7
		}
		senao {
			bola_x = bola_x - 5
		}	
		// colisão na horizontal
		se(bola_x >= 600) { // bateu no canto direito?
			indo_pra_direita = falso
		}
		se(bola_x <= 0) { // bateu no canto esquerdo?
			indo_pra_direita = verdadeiro
		}

		// movimentação da bola na vertical
		se (indo_pra_baixo) {
			bola_y = bola_y + 5
		}
		senao { // pra cima
			bola_y = bola_y - 5
		}	
		//colisão na vertical
		se(bola_y >= 300) { // bateu embaixo?
			indo_pra_baixo = falso
		}
		se(bola_y <= 0) { // bateu encima?
			indo_pra_baixo = verdadeiro
		}
	}

	funcao desenha()
	{
		//desenha fundo
		g.definir_cor(COR_DE_FUNDO)
		g.desenhar_retangulo(0, 0, LARGURA_DA_TELA, ALTURA_DA_TELA, falso, verdadeiro)

		//desenha bola
		g.definir_cor(COR_DA_BOLA)
		g.desenhar_elipse(bola_x, bola_y, TAMANHO_DA_BOLA, TAMANHO_DA_BOLA, verdadeiro)

		//gera o gráfico na tela
		g.renderizar()
	}
	
	funcao inicio()
	{
		//cria a janela do jogo
		g.iniciar_modo_grafico(verdadeiro)
		g.definir_dimensoes_janela(600, 300)
		g.definir_titulo_janela("Exercício de Lógica - Bounce")
		
		enquanto( nao t.tecla_pressionada(t.TECLA_ESC) ){
			processaLogica()
			desenha()
			u.aguarde(VELOCIDADE_DO_JOGO)
		}
	}

}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1329; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {bola_x, 18, 9, 6};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */