programa
{
//Cassio Amoras, 07/05/2022
	inclua biblioteca Util --> u
	
	cadeia pilha[20], elemento
	inteiro topo = -1

	funcao empilhar()
	{
		se(topo == 19)
		{
			u.aguarde(350)
			escreva("A pilha está cheia.\n")
			inicio()
		}
		se(topo < 19)
		{
			escreva("Adicionando elemento à pilha...\n")
			leia(elemento)
			
			se (elemento == "")
			{
				u.aguarde(350)
				escreva("É necessário digitar um nome.\n")
				inicio()
			}
			senao
			{
				u.aguarde(350)
				topo = topo + 1
				pilha[topo] = elemento
			}
		}
	}
	
	funcao desempilhar()
	{		
		se(topo > -1)
		{
			escreva("Um item foi retirado da pilha.\n")
			u.aguarde(350)
			topo--
		}
		senao
		{
			escreva("A pilha já está vazia.\n")
			u.aguarde(350)
			topo = -1
		}
	}
	
	funcao limpar()
	{		
		escreva("TODOS OS ITEMS FORAM RETIRADOS DA PILHA.\n")
		topo = -1
		u.aguarde(350)
	}
	
	
	funcao listar()
	{
		se(topo > -1)
		{
			para (inteiro point = 0; point <= topo; point++)
			{
			escreva(" ", point+1,"-", pilha[point], "\n")
			}
		}
		senao
		{
			escreva("A pilha está vazia.\n")
		}
	}
	
	funcao vazia()
	{
		se(topo == -1)
		{
			escreva("Pilha está vazia.\n")
		}
		se(topo > -1)
		{
			escreva("Pilha não está vazia.\n")
		}
	}
	
	
	funcao inicio()
	{
		inteiro opcao
		escreva("Escolha a opção desejada: \n")
		escreva("1-Empilhar\n", "2-Desempilhar\n", "3-Limpar\n", "4-Listar\n", "5-Verifica Vazia\n", "6-Sair\n")		
		
		faca{
			leia(opcao)
				escolha(opcao)
				{					
					caso 1:
						empilhar()
						inicio()
						pare
					caso 2:
						desempilhar()
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
						u.aguarde(350)						
						pare
					caso contrario:
						escreva("Digite uma opção válida.\n")
						inicio()
						pare	
				}
			}enquanto(opcao < 6 e opcao > 6)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 764; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {pilha, 6, 8, 5}-{opcao, 91, 10, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */