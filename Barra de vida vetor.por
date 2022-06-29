programa
{

	inclua biblioteca Tipos --> t
	
	funcao inicio()
	{
		inteiro valor
		escreva("\n")
		leia(valor)
		escreva("\n")
		cadeia vetor[21]  = {"0","1","2","3","4","5","6","7", "8","9","10","11","12","13","14","15","16","17","18","19","20"}
		para(inteiro i = 0; i < 21; i++)
		{
			se(i+1 == valor)
			{
				vetor[i] = "□"
			}
			escreva(vetor[i])
		}

		escreva("\n")
		leia(valor)
		escreva("\n")
		inteiro i = 0
		inteiro valordois = 20 - valor
		para(i; i < 21; i++)
		{
			
			vetor[i] = "□"
			se(i == valordois)
			{
				vetor[i] = t.inteiro_para_cadeia(valordois, 10)
			}escreva(vetor[i])
		}

		escreva("\n")
		leia(valor)
		escreva("\n")
		escreva("|")
		para(i = 0; i < 21; i++)
		{
			vetor[i] = ""
			se(i == valor)
			{
				vetor[i] = t.inteiro_para_cadeia(valor, 10)
			}escreva(vetor[i])
		}
		escreva("|")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 718; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */