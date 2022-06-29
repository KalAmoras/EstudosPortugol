programa
{
	//Cassio Amoras
	//Para acessar a função de salvar dados no Portugol é necessário usar a Biblioteca Arquivos. --> = Apelido para acesso
	inclua biblioteca Arquivos --> a
	
	//Constante para abrir/criar o arquivo texto específico que servirá de database/banco de dados para cadastros
	//O primeiro acesso ao cadastro em forma de leitura pode ocorrer em erro pois o acesso em MODO_LEITURA ocorre em erro quando o .txt ainda não existe, mas inicializando novamente o programa funcionará normalmente.
	const cadeia CADASTRO = "./cadastros.txt"
	//Uma linha global para controlar a funcao vertamanho() e esta por sua vez retornar o valor digitado pelo usuário em linha1
	inteiro linhaglobal = 0
	
	
	funcao vertamanho()
	{
		
		//Função para criar o arquivo caso ele não exista.
		se(a.arquivo_existe(CADASTRO))
		{
		inteiro lertamanho = a.abrir_arquivo(CADASTRO, a.MODO_LEITURA)
		inteiro linha1
		
		escreva("Quantos cadastros você deseja registrar?")
		leia(linha1)
		
		cadeia linhatamanho
		inteiro rep1 = 0
		//Tamanho 30 pois cada usuario utiliza 3 linhas no arquivo texto e,
		//Se utiliza um valor arbitrário pois o Portugol não declara dinamicamente vetores ou matrizes, elas precisam ser declaradas antes. 
		//Vetores e matrizes não trabalham de forma eficiente com o arquivotexto, por isso a série de repetições.
			se(linha1*3 < 31 e linha1 != 0)
			{	
				
				enquanto(nao a.fim_arquivo(lertamanho))
				{
					rep1++
					linhatamanho = a.ler_linha(lertamanho)							 
				
					se((linha1*3) + rep1 >= 31 e linhatamanho != "")
					{		
						escreva("Não são mais permitidos cadastros, número máximo (10) atingido ou o número de cadastros escolhido ultrapassa o limite.\n")
						a.fechar_arquivo(lertamanho)
						inicio()	
					}
					senao
					{
						linhaglobal = linha1
					}
				//É necessário fechar o arquivo aberto sempre que terminar a execução do mesmo
				}a.fechar_arquivo(lertamanho)					 
			}
			senao
			{
				escreva("Máximo 10\n")
				a.fechar_arquivo(lertamanho)
			}
					
			
		}
			
		
	}
	
	
	
	funcao inicio()
	{
		//Variável usada para controlar as opções do menu
		inteiro opcao				
		logico vivo = verdadeiro
		
		enquanto (vivo)
		{
			escreva("1) Cadastrar novo usuário\n", "2) Listar usuários cadastrados\n", "3) Sair do programa\n", "4) Buscar usuário\n")
			leia(opcao)
			limpa()
				
				escolha(opcao)
				{
//-----------------------CADASTRAR USUÁRIOS------------------------------------------------------------------------------------------
					caso 1:
					vertamanho()

					inteiro linha1 = linhaglobal

					cadeia nome 
					cadeia idade
					cadeia cpf
			
			
				//É preciso criar uma variável que represente o caminho e o modo de acesso, no caso acresentar/editar
				//MODO_ESCREVER sobrescreve o arquivotexto lendo as linhas, o MODO_ACRESENTAR adiciona informações para a primeira linha/espaço vazio
					inteiro cadastrar = a.abrir_arquivo(CADASTRO, a.MODO_ACRESCENTAR)

					para(inteiro i = 0; i < linhaglobal; i++)
					{

				//Todas estas condicionais servem para garantir que o arquivo não adicione um nome sem idade ou cpf e contamine o arquivotexto/database, 
				//Se fosse permitido tornaria a formatação da listagem completamente quebrada	
					escreva("Insira o nome:\n")
					leia(nome)
					se (nome == "")
					{
						a.fechar_arquivo(cadastrar)
						escreva("Digite um nome válido.\n")
						inicio()				
					}
					escreva("\n")
			
					escreva("Insira a idade:\n")
					leia(idade)
					se (idade == "")
					{
						a.fechar_arquivo(cadastrar)
						escreva("Digite uma idade válida.\n")
						inicio()
					}
					escreva("\n")
			
					escreva("Insira o CPF:\n")
					leia(cpf)
					se (cpf == "")
					{
						a.fechar_arquivo(cadastrar)
						escreva("Digite um cpf válido.\n")
						inicio()
					}
			
					se (nome == "" ou idade == "" ou cpf == "")
					{
						a.fechar_arquivo(cadastrar)
						escreva("Digite um nome válido.\n")
						pare
					}
					senao
					{
						a.escrever_linha(nome, cadastrar)
					}
			
					se (nome == "" ou idade == "" ou cpf == "")
					{
						a.fechar_arquivo(cadastrar)
						escreva("Digite uma idade válida.\n")
						pare
					}
					senao
					{
						a.escrever_linha(idade, cadastrar)
					}
			
					se (nome == "" ou idade == "" ou cpf == "")
					{
						a.fechar_arquivo(cadastrar)
						escreva("Digite um CPF válido.\n")
						pare
					}
					senao
					{
						a.escrever_linha(cpf, cadastrar)
					}
					escreva("\n")
			
					cadeia usuario = "Nome: " + nome + "\n" + "Idade: " + idade + "\n" + "CPF: " + cpf + "\n"
					escreva(usuario+"\n")
			
					}

			
					a.fechar_arquivo(cadastrar)
					pare

//-----------------------LISTAR USUÁRIOS------------------------------------------------------------------------------------------
					caso 2:
					inteiro n = 0
					se (a.arquivo_existe(CADASTRO))
					{
					inteiro listacadastro = a.abrir_arquivo(CADASTRO, a.MODO_LEITURA)
					cadeia linha
					escreva("Lista de usuários: \n")
				//Enquanto não chegar ao fim da lista no ARQUIVO TEXTO, o programa lê todas as linhas escritas até o fim. Por isso o "nao".
					enquanto( nao a.fim_arquivo(listacadastro))
					{
						linha = a.ler_linha(listacadastro)
					//Controlador da repetição, para cada linha lida, n aumenta e possibilita a gambiarra ao listar: forma cosmética para listar. Verboso mas mais legível ao usuário.
						n++
					//A biblioteca Arquivo sendo bastante restrita por ser um arquivo .txt, ela lê linha a linha impedindo uma formatação mais agradável.
						se (n == 1 ou n == 4 ou n == 7 ou n == 10 ou n == 13 ou n == 16 ou n == 19 ou n == 22 ou n == 25 ou n == 28)
						{
							se(linha != "")
							{
								escreva("Nome: " + linha + "\t")
							}
						}
						se (n == 2 ou n == 5 ou n == 8 ou n == 11 ou n == 14 ou n == 17 ou n == 20 ou n == 23 ou n == 26 ou n == 29)
						{
							se(linha != "")
							{
								escreva("Idade: " + linha + "\t")
							}
						}
						se (n == 3 ou n == 6 ou n == 9 ou n == 12 ou n == 15 ou n == 18 ou n == 21 ou n == 24 ou n == 27 ou n == 30)
						{
							se(linha != "")
							{
								escreva("CPF: " + linha + "\n")
							}
						}
					}a.fechar_arquivo(listacadastro)
			
					}
					pare
//-----------------------SAIR------------------------------------------------------------------------------------------
					caso 3:
					//caso a funcao vertamanho() e o cadastramento seja acionado e ocorra do usuário digitar algo em branco, a opção 3 para sair ocorre um erro mas finaliza normalmente.
					vivo = falso
					pare

//-----------------------BUSCAR USUÁRIOS------------------------------------------------------------------------------------------
					caso 4:
					inteiro buscarep = 0
					//Duas repetições(índices) distintas para poder controlar a visualização da formatação e retornar nome, idade e cpf um abaixo do outro somente buscando nome.
					inteiro rep1 = 0
					inteiro rep2 = 0
					inteiro cadastrobusca = a.abrir_arquivo(CADASTRO, a.MODO_LEITURA)
					cadeia linhabusca
					cadeia linhabuscarep
					cadeia buscanome			
					escreva("Digite o nome do usuário para busca: ")
					leia(buscanome)

					enquanto( nao a.fim_arquivo(cadastrobusca))
					{
						linhabusca = a.ler_linha(cadastrobusca)
						
						se (buscanome == linhabusca e buscanome != "" )
						{
							escreva("Nome: " + linhabusca)
					
							para(rep1; rep1 < 1; rep1++)
							{
								linhabuscarep = a.ler_linha(cadastrobusca)
								escreva("\nIdade: " + linhabuscarep)

								para(rep2; rep2 < 1; rep2++)
								{
									linhabuscarep = a.ler_linha(cadastrobusca)	
									escreva("\nCPF: " + linhabuscarep + "\n")	
								}																	
							}
							pare
					
						}
						se (buscanome == "")
						{
					
							escreva("\nÉ preciso digitar um nome.\n")
							pare
						}
						enquanto (linhabusca != buscanome)
						{
							se (a.fim_arquivo(cadastrobusca))
							escreva("\nUsuário não cadastrado.\n")
							pare
							
						}
							
					
					}
					a.fechar_arquivo(cadastrobusca)
					pare


					caso contrario:
					escreva("DIGITE UM NÚMERO VÁLIDO.\n")
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
 * @POSICAO-CURSOR = 2316; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */