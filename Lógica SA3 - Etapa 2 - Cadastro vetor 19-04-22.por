programa
{
	inteiro  quant = 0, posicao = 0, opcao, n = 0
	cadeia nome[6], enter, idade[6]
	
	funcao inicio()
	{

		se(quant == 0)
		{
			escreva("Quantos cadastros?")
			leia(quant)
		}
		escreva("Menu")
		leia(opcao)
			
		escolha(opcao)
		{
			caso 1:
	
				se(posicao < quant) 
				{
					escreva("Cadastro ", posicao+1, "/", quant, "\n")
					escreva("Informe o nome do usuário: \n")
					leia(nome[posicao])
	
					escreva("Informe a idade do usuário: ", nome[posicao], ":\n")
					leia(idade[posicao])
					posicao = posicao + 1
				}
				senao
				{
					escreva("Não existe mais vaga!")
				}
				inicio()
				pare
				
			caso 2:
			limpa()
			para(n = 0; n < posicao; n++)
			{
				escreva("Nome ", n+1, ": ", nome[n], " - Idade: ", idade[n], "\n")
			}
	
			escreva("Pressione a tecla [ENTER] para retornar!")
			leia(enter)
	
			inicio()
			pare
	
			caso 3:
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
 * @POSICAO-CURSOR = 885; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */