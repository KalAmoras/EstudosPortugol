programa
{
	inclua biblioteca Util --> u

	inteiro resultado, resultadoini, vida = 6, vidaini = 6, municao = 0, municaoini = 6, coberto = 0, cobertoini = 0, arma, armaini
	logico turno = falso, titulo = verdadeiro
	logico armas = falso, armasini = falso


//---------------FUNﾃ�ﾃグ ARSENAL--------------------------------------------------------------------------
	funcao arsenal()
	{
		se(titulo == verdadeiro)
		{
			escreva("==============================================\n")
			escreva("DDDDDD    UUU  UUU  EEEEEE  LLL       OOOOO   \n")
			escreva("DD   DD   UUU  UUU  EE      LLL      OOO OOO  \n")
			escreva("DD   DDD  UUU  UUU  EEEEEE  LLL      OO   OO  \n")
			escreva("DD   DDD  UUU  UUU  EEEEEE  LLL      OO   OO  \n")
			escreva("DD   DD   UUUUUUUU  EE      LLLLLLL  OOO OOO  \n")
			escreva("DDDDDD    UUUUUUUU  EEEEEE  LLLLLLL   OOOOO   \n")
			escreva("==============================================\n")
		}
		titulo = falso
		arsenalini()
		se(armas == falso)
		{
			escreva("Escolha sua arma: 1 - Revﾃｳlver   2 - Rifle    3 - Espingarda\n")
			leia(arma)
			escolha(arma)
			{		
				caso 1:
					municao = 6
					armas = verdadeiro
					pare
				caso 2:
					municao = 1
					armas = verdadeiro
					pare
				caso 3:
					municao = 2
					armas = verdadeiro
					pare
			}
		}
	}


//---------------FUNﾃ�ﾃグ ARSENAL DO INIMIGO--------------------------------------------------------------------------
	funcao arsenalini()
	{
		se(armasini == falso)
		{
			armaini = u.sorteia(1,3)
			escolha(armaini)
			{		
				caso 1:
					escreva("O inimigo empunhou seu revolver!\n")
					municaoini = 6
					armasini = verdadeiro
					pare
				caso 2:
					escreva("O inimigo empunhou seu rifle!\n")
					municaoini = 1
					armasini = verdadeiro
					pare
				caso 3:
					escreva("O inimigo empunhou sua espingarda!\n")
					municaoini = 2
					armasini = verdadeiro
					pare
			}
		}
	}
	

//---------------FUNﾃ�ﾃグ ATIRAR---------------------------------------------------------------------------------
	funcao atirar()
	{
		se (municao > 0)
		{
			dados()
			municao = municao - 1
			turno = verdadeiro
		}
		senao
		{
			escreva("A arma esta descarregada.\n")
			inicio()
		}
	}

	
//---------------FUNﾃ�ﾃグ DADOS---------------------------------------------------------------------------------	
	funcao dados()
	{	
		se(arma == 1)
		{
			inteiro dado = u.sorteia(1,6)
			se(dado >= 3 + cobertoini)
			{
				resultado = u.sorteia(1,6)
				vidaini = vidaini - resultado
				escreva("Voce causou " + resultado + " de dano.\n")
			}
			senao
			{
				escreva("Voce errou.\n")
			}
		}
		se(arma == 2)
		{
			inteiro dado = u.sorteia(1,6)
			se(dado >= 2 + cobertoini)
			{
				resultado = u.sorteia(2,6)
				vidaini = vidaini - resultado
				escreva("Voce causou " + resultado + " de dano.\n")
			}
			senao
			{
				escreva("Voce errou.\n")
			}
		}
		se(arma == 3)
		{
			inteiro dado = u.sorteia(1,6)
			se(dado >= 4 + cobertoini)
			{
				resultado = u.sorteia(1,6)
				vidaini = vidaini - resultado
				escreva("Voce causou " + resultado + " de dano.\n")
			}
			senao
			{
				se(cobertoini > 0)
				{
					cobertoini = 0
					escreva("Voce errou, mas expos o inimigo.\n")
				}
			}
		}
	}
	
	
//---------------FUNﾃ�ﾃグ RECARREGAR-----------------------------------------------------------------------------	
	funcao recarregar()
	{
		se(arma == 1)
		{
			municao = 6
			escreva("Sua arma foi recarregada.\n")
			turno = verdadeiro
		}
		se(arma == 2)
		{
			municao = 1
			escreva("Sua arma foi recarregada.\n")
			turno = verdadeiro
		}
		se(arma == 3)
		{
			municao = 2
			escreva("Sua arma foi recarregada.\n")
			turno = verdadeiro
		}
	}

	
//---------------FUNﾃ�ﾃグ TURNO DO INIMIGO-----------------------------------------------------------------------------	
	funcao turnoini()
	{
		
		se(vidaini <= 4 e cobertoini == 0)
		{
			inteiro coberturaini = u.sorteia(1,6)
			se(coberturaini >= 4)
			{
				cobertoini = 2
				escreva("O inimigo esta coberto.\n")
			}
			senao
			{
				escreva("O inimigo buscou cobertura mas continua exposto.\n")
			}
		}
		senao
		{
			se(municaoini > 0)
			{
				se(armaini == 1)
				{
					inteiro dadoini = u.sorteia(1,6)		
					se (dadoini >= 3 + coberto)
					{
						resultadoini = u.sorteia(1,6)
						escreva("O inimigo atirou em voce: " + resultadoini + " de dano.\n")
						municaoini = municaoini -1
						vida = vida - resultadoini
						
					}
					senao
					{
						escreva("O inimigo errou!\n")
						municaoini = municaoini -1
					}
				}
				se(armaini == 2)
				{
					inteiro dadoini = u.sorteia(1,6)		
					se (dadoini >= 2 + coberto)
					{
						resultadoini = u.sorteia(2,6)
						escreva("O inimigo atirou em voce: " + resultadoini + " de dano.\n")
						municaoini = municaoini -1
						vida = vida - resultadoini
						
					}
					senao
					{
						escreva("O inimigo errou!\n")
						municaoini = municaoini -1
					}	
				}
				se(armaini == 3)
				{
					inteiro dadoini = u.sorteia(1,6)		
					se (dadoini >= 3 + coberto)
					{
						resultadoini = u.sorteia(1,4)
						escreva("O inimigo atirou em voce: " + resultadoini + " de dano.\n")
						municaoini = municaoini -1
						vida = vida - resultadoini
						
					}
					senao
					{
						escreva("O inimigo errou mas voce esta exposto!\n")
						municaoini = municaoini -1
						coberto = 0
					}
				}
			}
			senao
			{
				se(armaini == 1)
				{
					municaoini = 6
				}
				se(armaini == 2)
				{
					municaoini = 1
				}
				se(armaini == 3)
				{
					municaoini = 2
				}
				escreva("O inimigo esta recarregando...\n")
			}
		}
	}


//---------------FUNﾃ�ﾃグ CONFERﾃ劾CIA DE VIDA------------------------------------------------------------------
	funcao conferencia()
	{
		se (vidaini <= 0)
		{
			escreva("Voce venceu!\n\n")
			vida = 6
			vidaini = 6
			coberto = 0
			cobertoini = 0
			armas = falso
			armasini = falso
			titulo = verdadeiro
			arsenal()
		}
		
		se (vida <= 0)
		{
			escreva("Voce morreu.\n\n")
			vida = 6
			vidaini = 6			
			coberto = 0
			cobertoini = 0
			armas = falso
			armasini = falso
			titulo = verdadeiro
			arsenal()
		}

		se(vidaini <= 0 e vida <= 0)
		{
			escreva("O Oeste não poupa ninguem, os dois morreram.\n\n")
			vida = 6
			vidaini = 6			
			coberto = 0
			cobertoini = 0
			armas = falso
			armasini = falso
			titulo = verdadeiro
			arsenal()
		}
	}

	
//---------------FUNﾃ�ﾃグ VER MUNIﾃ�ﾃグ---------------------------------------------------------------------------------
	funcao vermunicao()
	{
		escreva("Sua arma tem " + municao + " balas.\n")		
	}


//---------------SAIR---------------------------------------------------------------------------------
	funcao sair()
	{
		u.aguarde(1000)
	}


//---------------FUNﾃ�ﾃグ COBERTURA---------------------------------------------------------------------------------
	funcao cobertura()
	{
		se(coberto == 0)
		{
			inteiro cobertodado = u.sorteia(1, 6)
			se(cobertodado >= 4)
			{
				coberto = 2
				escreva("Voce encontrou cobertura com sucesso!\n")
			}
			senao
			{
				escreva("Voce continua exposto!\n")		
			}
			turno = verdadeiro
		}
		senao
		{
			escreva("Voce ja esta coberto!\n")
		}
	}


//---------------INﾃ垢IO---------------------------------------------------------------------------------------------	
	funcao inicio()
	{	
		turno = falso
		arsenal()
		conferencia()	
		escreva("================================================\n")
		escreva("[Sua vida: " + vida + "]" + "\t| [Vida do inimigo: " + vidaini + "]")
		escreva("\nTurno do Jogador\n")
		escreva("1 - Atirar   2 - Recarregar   3 - Ver municao   4 - Cobertura   6 - Sair\n")
		escreva("================================================\n")
		inteiro opcao
		leia(opcao)
		limpa()
		
		
		faca
		{			
			escolha(opcao)
			{
				caso 1:
					limpa()
					atirar()
					se (turno == verdadeiro)
					{
						turnoini()
					}
					inicio()
					pare
				caso 2:
					recarregar()
					se (turno == verdadeiro)
					{
						turnoini()
					}
					inicio()
					pare
				caso 3:
					vermunicao()
					inicio()
					pare
				caso 4:
					cobertura()
					se(turno == verdadeiro)
					{
						turnoini()	
					}
					inicio()
					pare
				caso 6:
					sair()
					pare
				caso contrario:
					escreva("Opﾃｧﾃ｣o invﾃ｡lida.\n")
					pare			
				
			}
		}enquanto(opcao < 6 e 6 < opcao)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 7706; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {municao, 5, 57, 7}-{municaoini, 5, 70, 10}-{coberto, 5, 86, 7}-{cobertoini, 5, 99, 10}-{arma, 5, 115, 4};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */