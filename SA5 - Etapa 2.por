programa
{
//Cassio Amoras, 07/05/2022
	cadeia fila[26], elemento
	inteiro final = -1

	funcao adicionar()
	{
		se(final == 24)
		{
			escreva("A fila está cheia.\n")
			inicio()
		}
		se(final < 24)
		{
			escreva("Adicionando elemento à fila...\n")
			leia(elemento)
			se (elemento == "")
			{
				escreva("É necessário digitar um nome.\n")
				inicio()
			}
			senao
			{
				final = final + 1
				fila[final] = elemento
				escreva("Nome adicionado.\n")
			}
		}
	}
	funcao remover()
	{
		para (inteiro rem = 0; rem <= final; rem++)
		{
			fila[rem] = fila[rem+1]
		}
		se(final >= 0)
		{
			final = final -1
		}
		senao
		{
			final = -1
		}
	}
	
	funcao limpar()
	{
		escreva("A FILA FOI ESVAZIADA.\n")
		final = -1
	}
	
	funcao listar()
	{
		se(final >= 0)
		{
			para (inteiro point = 0; point <= final; point++)
			{
				escreva(" ", point+1,"º-", fila[point], "|")
			}
			escreva("\n")
		}
		senao
		{
			escreva("A fila está vazia.\n")
		}
	}
	
	funcao vazia()
	{
		se(final == -1)
		{
			escreva("Fila está vazia.\n")
		}
		se(final > -1)
		{
			escreva("Fila não está vazia.\n")
		}
	}
	
	
	funcao inicio()
	{
		cadeia enter
		inteiro opcao = 0
		escreva("Escolha a opção desejada: \n")
		escreva("1-Adicionar\n", "2-Remover\n", "3-Limpar\n", "4-Listar\n", "5-Verifica Vazia\n", "6-Sair\n")
		

		enquanto(opcao != 6)
		{
			leia(opcao)
			escolha(opcao)
			{
				caso 1:
					adicionar()
					inicio()
					pare
				caso 2:
					remover()
					inicio()
					pare
				caso 3:
					limpar()
					inicio()
					pare
				caso 4:
					listar()
					inicio()
					pare
				caso 5:
					vazia()
					inicio()
					pare	
				caso 6:
					final = -1
					//O Portugol termina com erro mas o programa funciona normalmente.
					escreva("Programa finalizando...Pressione[ENTER]")
					leia(enter)
					pare
				caso contrario:
					escreva("Digite uma opção válida.\n")
					inicio()
					pare	
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1728; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {fila, 4, 8, 4};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */