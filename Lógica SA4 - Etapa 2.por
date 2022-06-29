programa
{
	//Cássio Amoras, 20/04/22
	inteiro  total = 0, l = 0, opcao, rep = 0
	cadeia nome[6], enter, idade[6]
//----------------------------------------INICIO----------------------------------------------------------------------------------------------------------------------
	funcao inicio()
	{
		enquanto(total == 0)
		{
			escreva("Quantos cadastros você deseja registrar?[MÁX. 5]\n")
			leia(total)
			se(total >= 6)
			{
				escreva("Não é possível registrar acima de 5 usuários.\n")
				total = 0
				inicio()
			}
		}
		escreva("1) Cadastrar novo usuário\n", "2) Listar usuários cadastrados\n", "3) Sair do programa\n", "4) Buscar usuário\n", "5) Remover usuário\n")
		leia(opcao)
			
		escolha(opcao)
		{
//----------------------------------------ADICIONAR----------------------------------------------------------------------------------------------------------------------
			caso 1:
	
				se(l < total) 
				{
					escreva("Cadastro ", l+1, "/", total, "\n")
					escreva("Informe o nome do usuário: \n")
					leia(nome[l])
					se(nome[l] == "")
					{
						escreva("Você não digitou um nome.\n")
						inicio()
						pare
					}
					se(nome[l] != "")
					{	
						escreva("Informe a idade do usuário: ", nome[l], "\n")
						leia(idade[l])
						se(idade[l] == "")
						{
							escreva("Você não digitou uma idade.\n")
							inicio()
							pare
						}
						se(idade[l] != "")
						{
							l = l + 1
						}
					}		
				}
				senao
				{
					escreva("Não existe mais vaga!\n")
				}
				inicio()
				pare
//----------------------------------------LISTAR----------------------------------------------------------------------------------------------------------------------
			caso 2:
				limpa()
				para(rep = 0; rep < l; rep++)
				{
					escreva("Nome ", rep+1, ": ", nome[rep], "\tIdade ", rep+1,": ", idade[rep], "\n")
				}
		
				escreva("Pressione a tecla [ENTER] para retornar!")
				leia(enter)
		
				inicio()
				pare
//----------------------------------------SAIR----------------------------------------------------------------------------------------------------------------------	
			caso 3:
				total = 0
				pare
//----------------------------------------BUSCAR----------------------------------------------------------------------------------------------------------------------
			caso 4:
				escreva("Escolha o usuário para ser procurado: ")
				inteiro i
				cadeia nomebusca
				leia(nomebusca)
				se (nomebusca == "")
				{
					escreva("Você não digitou um nome.\n")
					inicio()
					pare
				}
					para (i = 0; i < 5; i++)
					{						
						se (nomebusca == nome[i])
						{
							escreva("\nUsuário ", nome[i],"\t-Idade: ", idade[i], "\n")
							pare
						}
						se (nomebusca != nome[i] e i == total)
						{
							escreva("Usuário não cadastrado\n")
							pare
						}
					}
						
						
				inicio()
				pare
//----------------------------------------REMOVER----------------------------------------------------------------------------------------------------------------------
			caso 5:
				escreva("Escolha o usuário para ser removido: ")
				inteiro k
				cadeia nomedel
				leia(nomedel)
				se (nomedel == "")
				{
					escreva("Você não digitou um nome.\n")
					inicio()
					pare
				}
					para (k = 0; k < total; k++)
					{						
						se (nomedel == nome[k])
						{
							escreva("\nUsuário ", nome[k]," removido.\n")
							nome[k] = ""
							idade[k] = ""
							se(k == 0)
							{
								para (k = 0; k < total; k++)
								{						
									nome[k] = nome[k+1]
									idade[k] = idade[k+1]
								}
							}	
							se(k>0)
							{
								para (k; k < total; k++)
								{
									nome[k] = nome[k+1]
									idade[k] = idade[k+1]									
								}
							}
							//l controla a quantidade aceitável para o caso1 adicionar um usuário caso outro seja removido e for menor que o total
							l = l - 1
							pare							
						}
						se (nomedel != nome[k] e k == total-1)
						{
							escreva("Usuário não cadastrado\n")
						}
					}	
				
				inicio()
				pare			
		
			caso contrario:
			escreva("Opção inválida.")
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
 * @POSICAO-CURSOR = 3964; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */