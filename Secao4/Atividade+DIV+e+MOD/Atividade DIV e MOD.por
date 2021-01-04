programa
{
	//códigos necessários para usar o mouse e gráficos
	inclua biblioteca Graficos
	inclua biblioteca Mouse

	funcao desenha_retangulo_do_mouse()
	{
		inteiro tamanho = TAMANHO_DA_TELA/QUADRADOS //o tamanho do quadrado azul
		inteiro x = Mouse.posicao_x() / 60 * 60
		inteiro y = Mouse.posicao_y() / 60 * 60

		escreva("Coluna : ", x/60, "\n")
		
		Graficos.desenhar_retangulo(x, y, tamanho, tamanho, falso, verdadeiro)
	}

	funcao inicio()
	{
		cria_tela() //nessa linha a tela é criada com um tamanho de 800 x 600
		
		faca {
			desenha()
		}
		enquanto( verdadeiro )
	}

	funcao cria_tela()
	{
		Graficos.iniciar_modo_grafico(verdadeiro)
		Graficos.definir_dimensoes_janela(TAMANHO_DA_TELA, TAMANHO_DA_TELA)
		Graficos.definir_titulo_janela("Atividade com DIV e MOD ...")

		COR_CINZA = Graficos.criar_cor(210, 210, 210)

	}

	funcao desenha()
	{
		//pinta o fundo de branco
		Graficos.definir_cor(Graficos.COR_BRANCO)
		Graficos.desenhar_retangulo(0, 0, TAMANHO_DA_TELA, TAMANHO_DA_TELA, falso, verdadeiro)

		//desenha linhas verticais
		inteiro tamanho = TAMANHO_DA_TELA/QUADRADOS
		Graficos.definir_cor(COR_CINZA)
		para (inteiro i=0; i < QUADRADOS; i++)
		{
			Graficos.desenhar_linha(i * tamanho, 0, i * tamanho, TAMANHO_DA_TELA) //linha vertical
			Graficos.desenhar_linha(0, i* tamanho, TAMANHO_DA_TELA, i * tamanho)//linha horizontal
		}

		Graficos.definir_cor(Graficos.COR_AZUL)
		desenha_retangulo_do_mouse()

		Graficos.renderizar()
	}

	inteiro TAMANHO_DA_TELA = 600
	inteiro QUADRADOS = 10
	inteiro COR_CINZA = 0
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 832; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */