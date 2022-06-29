programa
{
	inteiro bubble[5], i = 0, assist, bolha = 1, num, k = 0
	

	funcao preencher()
	{
		para(k = 0; k < 5; k++)
		{
			escreva(k+1, "º nº: ")
			leia(num)
			bubble[k] = num
		}
	}
	

	funcao ordenar()
	{
		enquanto(bolha == 1)
		{
			bolha = 0
			para(i = 0; i < 5 - 1; i++)
			{
				se(bubble[i] > bubble[i+1])
				{
					assist = bubble[i]
					bubble[i] = bubble[i+1]
					bubble[i+1] = assist
					bolha = 1
				}
			}
		}
		escreva("Os números foram ordenados em ordem crescente.\n")		
	}


	funcao listar()
	{
		para (i = 0; i < 5; i++)
		{
			se(i < 4)
			{
				escreva(bubble[i],"-")
			}
			se(i == 4)
			{
				escreva(bubble[i], "\n")
			}
		}	
	}
	
	
	
	funcao inicio()
	{
		inteiro opcao
		escreva("Escolha a opção desejada: \n")
		escreva("1-Preencher\n", "2-Ordenar\n", "3-Listar\n", "4-Sair\n")
		
		faca{
			leia(opcao)
				escolha(opcao)
				{
					caso 1:
						preencher()
						inicio()
						pare
					caso 2:
						ordenar()
						inicio()
						pare
					caso 3:
						listar()
						inicio()
						pare
					caso 4:
						pare
					caso contrario:
						escreva("Digite uma opção válida.\n")
						pare				
						
				}
			}enquanto(opcao < 4 e opcao > 4)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 497; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {bubble, 3, 9, 6}-{i, 3, 20, 1}-{k, 3, 51, 1}-{opcao, 56, 10, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */