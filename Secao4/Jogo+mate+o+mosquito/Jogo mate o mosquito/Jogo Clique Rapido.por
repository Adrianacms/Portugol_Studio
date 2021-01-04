programa
{
	//códigos necessários para usar o teclado e gráficos
	inclua biblioteca Graficos
	inclua biblioteca Tipos
	inclua biblioteca Mouse
	inclua biblioteca Util

	logico fim_de_jogo = falso //O fim do jogo acontece quando: O jogador ganha, o tempo termina, ou a munição acaba
	inteiro tempo_restante = 20
	inteiro municao = 15

	inteiro TAMANHO = 600
	inteiro COR_CINZA = 0
	inteiro pontos = 0
	inteiro tempo_decorrido = 0
	inteiro posicao_x = 0, posicao_y = 0
	inteiro tamanho_da_mira = 20

	inteiro ultimo_tiro = 0

	inteiro imagem_municao = 0
	inteiro imagem_relogio = 0
	inteiro imagem_mosquito = 0
	inteiro imagem_mosquito_mini = 0
	inteiro imagem_mosquito_mini_cinza = 0

	funcao inicio()
	{
		carrega_imagens()
		cria_tela() //nessa linha a tela é criada com um tamanho de 800 x 600
		tempo_decorrido = Util.tempo_decorrido()
		sorteia_nova_posicao()
		
		faca {
			desenha()

			//verifica se é hora de mudar a posição do mosquito
			se (Util.tempo_decorrido() - tempo_decorrido >= 800){
				tempo_decorrido = Util.tempo_decorrido()
				tempo_restante--
				sorteia_nova_posicao()
			}

			//verifica se pode atirar
			se (Mouse.algum_botao_pressionado() e (Util.tempo_decorrido() - ultimo_tiro >= 500)){
				ultimo_tiro = Util.tempo_decorrido()
				municao--
				inteiro mouse_x = Mouse.posicao_x()
				inteiro mouse_y = Mouse.posicao_y()
				inteiro tamanho_mosquito = Graficos.largura_imagem(imagem_mosquito)
				logico eixo_x = mouse_x >= posicao_x e mouse_x <= posicao_x + tamanho_mosquito
				logico eixo_y = mouse_y >= posicao_y e mouse_y <= posicao_y + tamanho_mosquito
				se (eixo_x e eixo_y){
					pontos++
				}
			}

			//aqui precisamos alterar o valor da variável fim_de_jogo
			//O fim do jogo acontece quando: O jogador ganha, o tempo termina, ou a munição acaba
			fim_de_jogo = tempo_restante == 0 ou municao == 0 ou pontos == 10
		}
		enquanto( nao fim_de_jogo )

		enquanto( verdadeiro){
			desenha_tela_final()
			Util.aguarde(500)
		}
	}

	funcao desenha_tela_final(){
		Graficos.definir_cor(Graficos.COR_BRANCO)
		Graficos.desenhar_retangulo(0, 0, TAMANHO, TAMANHO, falso, verdadeiro)
		
		Graficos.definir_cor(Graficos.COR_PRETO)
		Graficos.definir_tamanho_texto(32.0)
		logico venceu = pontos >= 10
		cadeia texto = ""
		se(nao venceu){
			se (tempo_restante <= 0){
				texto = "Game Over! Seu tempo acabou!"
			}
			senao se(municao <= 0){
				texto = "Game Over! Sua munição acabou!"
			}
			senao{
				texto = "Jogo finalizado!"
			}
		}
		senao{
			texto = "Parabéns, você tem olhos de águia :)"
		}
		inteiro largura_texto = Graficos.largura_texto(texto)
		Graficos.definir_cor(Graficos.COR_PRETO)
		Graficos.desenhar_texto(TAMANHO/2 - largura_texto/2, TAMANHO/2, texto)

		Graficos.renderizar()
	}

	funcao cria_tela()
	{
		Graficos.iniciar_modo_grafico(verdadeiro)
		Graficos.definir_dimensoes_janela(TAMANHO, TAMANHO)
		Graficos.definir_titulo_janela("Mate os 10 mosquitos ...")

		COR_CINZA = Graficos.criar_cor(210, 210, 210)

		Mouse.ocultar_cursor()
	}

	funcao desenha_pontos(){
		inteiro tamanho_imagem = Graficos.altura_imagem(imagem_mosquito_mini)
		inteiro y = TAMANHO - tamanho_imagem -5
		inteiro margem = TAMANHO - tamanho_imagem * 10
		para(inteiro i=0; i < 10; i++){
			inteiro x = i * tamanho_imagem + margem
			se (i < pontos){
				Graficos.desenhar_imagem(x, y, imagem_mosquito_mini)
			}
			senao{
				Graficos.desenhar_imagem(x, y, imagem_mosquito_mini_cinza)
			}
		}
	}

	funcao carrega_imagens(){
		imagem_municao = Graficos.carregar_imagem("bullet.png")
		imagem_relogio = Graficos.carregar_imagem("clock.png")
		imagem_mosquito = Graficos.carregar_imagem("mosquito.png")
		imagem_mosquito_mini = Graficos.carregar_imagem("mosquito_mini.png")
		imagem_mosquito_mini_cinza = Graficos.carregar_imagem("mosquito_mini_cinza.png")
	}

	funcao sorteia_nova_posicao(){
		//sorteia a nova posição do quadrado
		posicao_x = Util.sorteia(32, TAMANHO-32)
		posicao_y = Util.sorteia(32, TAMANHO-32)
	}

	funcao desenha()
	{
		//pinta o fundo de branco
		Graficos.definir_cor(Graficos.COR_BRANCO)
		Graficos.desenhar_retangulo(0, 0, TAMANHO, TAMANHO, falso, verdadeiro)

		desenha_mosquito()

		desenha_pontos()

		desenha_mira()

		desenha_tempo_restante()

		desenha_municao()

		Graficos.renderizar()
	}

	funcao desenha_mosquito(){
		Graficos.desenhar_imagem(posicao_x, posicao_y, imagem_mosquito)
	}

	funcao desenha_municao(){
		inteiro largura = Graficos.largura_imagem(imagem_municao)
		inteiro altura = Graficos.altura_imagem(imagem_municao)
		para(inteiro x=0; x < municao; x++){
			Graficos.desenhar_imagem(x * largura, TAMANHO - altura - 5, imagem_municao)
		}
	}

	funcao desenha_tempo_restante(){
		cadeia tempo = Tipos.inteiro_para_cadeia(tempo_restante, 10)
		inteiro largura_texto = Graficos.largura_texto(tempo)
		Graficos.definir_cor(Graficos.COR_VERMELHO)
		Graficos.definir_tamanho_texto(36.0)
		Graficos.desenhar_texto(TAMANHO/2 - largura_texto/2, 10, tempo)

			
		Graficos.desenhar_imagem(TAMANHO/2 - largura_texto/2 -32, 10, imagem_relogio)
	}

	funcao desenha_mira(){
		Graficos.definir_cor(Graficos.COR_PRETO)
		inteiro mouse_x = Mouse.posicao_x()
		inteiro mouse_y = Mouse.posicao_y()
		Graficos.desenhar_elipse(
			mouse_x - tamanho_da_mira/2, 
			mouse_y - tamanho_da_mira/2, 
			tamanho_da_mira, 
			tamanho_da_mira, falso
		)

		Graficos.desenhar_linha(mouse_x, mouse_y - tamanho_da_mira/2 - 5, mouse_x, mouse_y + tamanho_da_mira/2 + 5)
		Graficos.desenhar_linha(mouse_x - tamanho_da_mira/2 - 5, mouse_y, mouse_x + tamanho_da_mira/2 + 5, mouse_y)
	}

	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1967; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */