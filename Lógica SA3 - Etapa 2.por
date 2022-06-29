programa
{
	//Cássio Amoras, 20/04/22
	inteiro  total = 0, l = 0, opcao, rep = 0, laco = 1
	cadeia nome[6], enter, idade[6], assist
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
		escreva("1) Cadastrar novo usuário\n", "2) Listar usuários cadastrados\n", "3) Sair do programa\n")
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
	
					escreva("Informe a idade do usuário: ", nome[l], "\n")
					leia(idade[l])
					l = l + 1
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
 * @POSICAO-CURSOR = 648; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {total, 4, 10, 5}-{l, 4, 21, 1};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */