programa
{
	
	inclua biblioteca Util --> u

	const inteiro MAX = 300
	
	cadeia poltronas[31][11]
	
	inteiro opcao, linmax, colmax, contador, contadorvago
	logico cadastrado = falso
	real cadastro
	


	
//--------------------------------FUNﾃ�ﾃグ CADASTRAR------------------------------------------------------------------------------
	funcao cadastrar()
	{
		se(cadastrado == falso)
		{
			escreva("Quantas linhas de poltronas?[MAX 30]\n")
			leia(linmax)
			se(linmax == 0)
			{
				escreva("Voce nao digitou um numero valido.\n")
				cadastrar()
			}
			senao se(linmax > 30)
			{
				escreva("Numero maximo de linhas e 30.\n")
				cadastrar()
			}
			senao
			{
				
			}
			escreva("Quantas colunas de poltronas?[MAX 10]\n")
			leia(colmax)
			se(colmax == 0)
			{
				escreva("Voce nao digitou um numero valido.\n")
				cadastrar()
			}
			senao se(colmax > 10)
			{
				escreva("Numero maximo de colunas e 10.\n")
				cadastrar()
			}
			senao
			{
				cadastro = linmax*colmax
				cadastrado = verdadeiro
			}
		}
	}



//--------------------------------FUNﾃ�ﾃグ EXIBIR TODAS POLTRONAS------------------------------------------------------------------------------
	funcao exibirpoltronas()
	{
		contador = 0
		contadorvago = 0	
		para(inteiro i = 0; i < linmax; i++)
		{
			para(inteiro j = 0; j < colmax; j++)
			{
				se(i == 0 e j > 0)
				{
					escreva("  ")
				}
				se(i <= 9 e i >=1 e j > 0)
				{
					escreva(" ")
				}
				se(poltronas[i][j] == "")
				{
					escreva("|", (i*10)+(j*1), "|", " ")
					contadorvago++
				}
				se(poltronas[i][j] != "")
				{
					escreva("|",poltronas[i][j],"|")
					contador++
				}
			}
			escreva("\n")
		}
		
		escreva("\nExistem ", contadorvago, " poltronas vagas.\n")
		escreva("E ", contador, " poltronas ocupadas.\n")
		real porcentagem = (contadorvago/cadastro)*100
		escreva("A porcentagem de poltronas vazias é: ", porcentagem, "%\n")
		escreva("A porcentagem de poltronas ocupadas é: ", 100-porcentagem, "%\n") 
	}



//--------------------------------FUNﾃ�ﾃグ EXIBIR POLTRONAS VAGAS------------------------------------------------------------------------------
	funcao exibirpoltronasvagas()
	{
		contador = 0
		contadorvago = 0	 
		escreva("Poltronas ocupadas possuem sao marcadas pelo X\n")
		para(inteiro i = 0; i < linmax; i++)
		{
			para(inteiro j = 0; j < colmax; j++)
			{
				
				se(i == 0 e j > 0)
				{
					escreva("  ")
				}
				se(i <= 9 e i >=1 e j > 0)
				{
					escreva(" ")
				}
				se(poltronas[i][j] == "")
				{
					escreva("|", (i*10)+(j*1), "|")
					contadorvago++
				}
				se(poltronas[i][j] != "")
				{
					escreva("|X|")
					contador++
				}
			}
			escreva("\n")
		}
		escreva("\nExistem ", contadorvago, " poltronas vagas.\n")
		escreva("E ",contador, " poltronas ocupadas.\n")
	}



//--------------------------------FUNﾃ�ﾃグ EXIBIR POLTRONAS OCUPADAS------------------------------------------------------------------------------
	funcao exibirpoltronasocupadas()
	{
		escreva("Estas sao as poltronas ocupadas.\n")
		para(inteiro i = 0; i < linmax; i++)
		{
			para(inteiro j = 0; j < colmax; j++)
			{
				se(poltronas[i][j] != "")
				{
					escreva("Passageiro: ", poltronas[i][j], " na poltrona: ", (10*i) + (1*j), "\n")
				}
			}
		}
	}



//--------------------------------FUNﾃ�ﾃグ RESERVAR------------------------------------------------------------------------------	
	funcao reservar()
	{
		
		cadeia nomecadastrado
		inteiro fileira, coluna
		escreva("Escolha a fileira[MIN 0]: \n")
		leia(fileira)
		
		se(fileira >= linmax)
		{
			escreva("A ultima fileira e: ", linmax-1, ", escolha um numero igual ou menor.\n")
			inicio()
		}
		senao
		{
			
		}
		escreva("Escolha a poltrona[MIN 0]: \n")
		leia(coluna)
		se(coluna >= colmax)
		{
			escreva("A ultima coluna e: ", colmax-1, ", escolha um numero igual ou menor.\n")
			inicio()
		}
		senao
		{
			
		}
		escreva("Escreva o nome da pessoa para a qual a poltrona sera reservada: \n")
		leia(nomecadastrado)
		se(nomecadastrado == "")
		{
			escreva("Voce nao digitou um nome.\n")
			inicio()
		}
		senao
		{		
			se(poltronas[fileira][coluna] == "")
			{	
				poltronas[fileira][coluna] = nomecadastrado
				escreva(nomecadastrado, " reservou a poltrona: ", (fileira*10)+(coluna*1) , "\n")
			}
			senao
			{
				escreva("Esta poltrona ja esta ocupada.\n")
				inicio()
			}
		}
	}


	
//--------------------------------FUNﾃ�ﾃグ PESQUISAR POR NOME------------------------------------------------------------------------------
	funcao pesquisar()
	{
		cadeia pesquisa
		escreva("Qual o nome que deseja pesquisar?\n")
		leia(pesquisa)
		se(pesquisa == "")
		{
			escreva("Voce nao digitou nenhum nome.\n")
		}
		
		para(inteiro i = 0; i < linmax; i++)
		{
			para(inteiro j = 0; j < colmax; j++)
			{
				se(pesquisa == poltronas[i][j])
				{
					escreva("Passageiro na poltrona: ", (i*10)+(1*j), "\n")
					inicio()
					pare
				}
				se(pesquisa != poltronas[i][j] e i+1 == linmax e j+1 == colmax)
				{
					escreva("Passageiro nao cadastrado.\n")
				}
				
			}
		}
	}


//--------------------------------FUNﾃ�ﾃグ SAIR------------------------------------------------------------------------------
	funcao sair()
	{
		logico saiu = falso
		se(saiu == falso)
		{
			escreva("Se o programa nao fechar, aperte [SHIFT]+[F7]\n")
		}
		saiu = verdadeiro
		
	}	
	
	funcao inicio()
	{
		cadastrar()
		
		escreva("Bem-vindo(a) a Sweet Flight! Escolha uma opcao.\n")
		escreva("1 - Reservar\n2 - Ver poltronas disponveis\n")
		escreva("3 - Ver poltronas reservadas\n4 - Consultar passageiro\n5 - Visualizar todas poltronas\n")
		escreva("6 - Sair\n")
		leia(opcao)
		escolha(opcao)
		{			
			caso 1:
				reservar()
				inicio()
				pare
			caso 2:
				exibirpoltronasvagas()
				inicio()
				pare
			caso 3:
				exibirpoltronasocupadas()
				inicio()
				pare
			caso 4:
				pesquisar()
				inicio()
				pare
			caso 5:
				exibirpoltronas()
				inicio()
				pare
			caso 6:
				sair()
				pare
			caso contrario:
				escreva("DIGITE UMA OPCAO VALIDA\n")
				inicio()
				pare	
		}
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 4717; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */