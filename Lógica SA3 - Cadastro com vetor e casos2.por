programa
{
	inteiro i
	inteiro numcad
	inteiro rep
	inteiro numcadlimite
	cadeia nomes [10], idades [10], nome, idade
	
	funcao vertamanho()
		{
			escreva("\nQuantos cadastros deseja efetuar?(Máximo 10)\n")
			leia(numcad)
			numcadlimite = numcad
			
			se(numcad > 10)
			{
				escreva("Máximo 10.")
				inicio()
			}
			se(numcad < 10)
			{
				para(i = 0; i < 10; i++)
				{
					enquanto(nomes[i] == "" e i > 10)
					{
						se(nomes[i] != "")
						{
						escreva("Não é possível adicionar esta quantidade de cadastros.\n")
						inicio()
						pare
						
						}	
						se(nomes [i] == "")
						{
							
							numcad += numcadlimite
							pare
						}
					}
				}	
			}rep = numcad

		}
			
//-----------------------------------------------------------------------------------------------------------------------------------	
	funcao inicio()
	{
		
		inteiro opcao
		logico vivo = verdadeiro
		

		enquanto (vivo == verdadeiro)
		{
			
			inteiro i
			escreva("1) Cadastrar novo usuário\n", "2) Listar usuários cadastrados\n", "3) Sair do programa\n", "4) Buscar usuário\n", "5) Remover usuário\n")
			leia(opcao)
			
			escolha(opcao)
				{		
							
					caso 1:					
						
						vertamanho()
						
						numcad = rep
						
						
						para ( i = 0; i < rep; i++)
						{
							escreva("\nEscreva o nome para ser cadastrado: ")
							leia(nome)
							escreva("\nQual a idade do usuário?\n")
							leia(idade)
							
							para (i=0; i < 10; i++)
							{
								se(nomes[i] == "" e idades[i] == "")
								{
									nomes[i] = nome
									idades[i] = idade
									escreva("Cadastro realizado.\n")
									pare
								}
							}
						}
						pare					
				
					caso 2:
						limpa()
						escreva("\nLista de usuários: \n")
						para ( i = 0; i < 10; i++)
						{
							se(nomes[i] != "" e idades[i] != "")
							{
								escreva("Usuário: ", nomes[i], "\t", "Idade: " + idades[i], + "\n") 
							}
						}
						pare
					
					
					caso 3:
						vivo = falso
						pare
					
					caso 4:
						limpa()
						escreva("Escolha o usuário para ser procurado: ")
						leia(nome)
						se (nome == "")
							{
								escreva("Você não digitou um nome.\n")
								pare
							}
						i = 0
						enquanto(i < 10)
						{
							
							se (nomes[i] == nome)
							{
								escreva("\nUsuário ", nomes[i]," cadastrado.\n")
								pare
							}
							se (nomes[i] == "" ou nomes[i] != nome)
							{
								i++
							}
							se (i == 10)
							{
							escreva("Usuário não cadastrado\n")
							}
							
													
						}
						
						pare

					caso 5:
						limpa()
						escreva("Escolha o usuário para ser removido: ")
						leia(nome)
						se (nome == "")
						{
							escreva("Você não digitou um nome.\n")
							inicio()
							pare
						}
						para (i = 0; i < 10; i++)
						{
							se (nomes[i] == nome)
							{
								nomes[i] = ""
								idades[i] = ""
							}
						}
						pare
		
					caso contrario:
						limpa()
						escreva("Digite uma opção válida\n.")
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
 * @POSICAO-CURSOR = 1526; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {numcadlimite, 6, 9, 12};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */