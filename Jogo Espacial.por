programa
{
	inclua biblioteca Tipos --> t
	inclua biblioteca Util --> u

	inteiro planeta[7], tipoestrela = 0, resultadosis, tipoplan, opcao, resultadorec, quantrec, escolharec, escolhaplan, tipoloja, lojaexiste, contadorsonda = 0, quantcompra
	inteiro H = 0, He = 0, H3 = 0, N = 0, O = 0, C = 0, Li = 0, Fe = 0, Ti = 0, Al = 0, Nd = 0, Dy = 0, Y = 0, comida = 20, sisvit = 20, loja = 0, creditos = 50, combustivel = 20, casco = 20
	inteiro sondaup = 2, motorup = 0, sisvitup = 0, cascoup = 0, artefatoid, tipoartefato = 0, artvit = 0
	cadeia tipoplaneta[8], recurso[10], planetaatual = "", barracombu[21], barracasco[21], barrasisvit[21], barracomida[21], artefatos[3] = {"Vazio", "Vazio", "Vazio"}
	logico trocasis = verdadeiro, recursofix = verdadeiro, ficouplaneta = falso, danoestrela = verdadeiro, artefatoum = falso, artefatodois = falso, artefatotres = falso
	logico placarcreditos = verdadeiro, placarartefatos = verdadeiro, placarmetais = verdadeiro
	

//----------------------------------FUNﾃ�ﾃグ SORTEAR SISTEMA---------------------------------------
	funcao sortearsistema()
	{
		se(trocasis == verdadeiro)
		{
			escreva("Procurando um novo sistema... \t[[[Sistema encontrado]]] \n")

			sortearestrela()
		
			resultadosis = u.sorteia(1,7)
	
			para(inteiro i = 0; i < resultadosis; i++)
			{
				se(i == 0)
				{
					escreva("(")
				}
				se(i > 0)
				{
					escreva(")--(")
				}			
				tipoplan = u.sorteia(1, 20)
								
				planeta[i] = tipoplan
				escreva(i+1+"-")
							
				se(tipoplan == 2 ou tipoplan == 4 ou tipoplan == 8 ou tipoplan == 12 ou tipoplan == 14 ou tipoplan == 16)
				{
					escreva("Gasoso")
					tipoplaneta[i] = "Gasoso"
					sortloja()
				}				
				se(tipoplan == 3 ou tipoplan == 6 ou tipoplan == 9 ou tipoplan == 15)
				{
					escreva("Rochoso")
					tipoplaneta[i] = "Rochoso"
					sortloja()
				}
				se(tipoplan == 1)
				{
					escreva("Aquatico")
					tipoplaneta[i] = "Aquatico"
					sortloja()
				}
				se(tipoplan == 5 ou tipoplan == 11)
				{
					escreva("Gigante Gasoso")
					tipoplaneta[i] = "Gigante Gasoso"
					sortloja()
				}			
				se(tipoplan == 7)
				{
					escreva("Metalico")
					tipoplaneta[i] = "Metalico"
					sortloja()
				}
				se(tipoplan == 10)
				{
					escreva("Terreno")
					tipoplaneta[i] = "Terreno"
					loja = 1
					tipoloja = u.sorteia(1, 3)
				}
				se(tipoplan == 13 ou tipoplan == 20)
				{
					escreva("Magmatico")
					tipoplaneta[i] = "Magmatico"
					sortloja()
				}
				se(tipoplan == 17)
				{
					escreva("Cinturao de Asteroides")
					tipoplaneta[i] = "Cinturao de Asteroides"
					loja = 1
					tipoloja = u.sorteia(1, 3)
				}
				se(tipoplan == 19)
				{
					escreva("Gigante de Gelo")
					tipoplaneta[i] = "Gigante de Gelo"
					sortloja()		
				}
				se(tipoplan == 18)
				{
					escreva("Amonia")
					tipoplaneta[i] = "Amonia"
					sortloja()
				}
				se(i+1 == resultadosis)
				{
					escreva(")\n")
				}
							
			}
			trocasis = falso
		}		
	}
	


//----------------------------------FUNﾃ�ﾃグ SORTEAR ESTRELA---------------------------------------	
	funcao sortearestrela()
	{		
		escreva("Tipo da Estrela: ")
		tipoestrela = u.sorteia(1, 16)
		escolha(tipoestrela)
		{
			caso 1:
			caso 2:
			caso 3:
			caso 4:
			caso 5:
				escreva("Ana Vermelha\n") 
				pare
			caso 6:
			caso 7:
				escreva("Laranja\n")
				pare
			caso 8:
			caso 9:
				escreva("Branca\n")
				dano()
				pare
			caso 10:
				escreva("Azul\n")
				dano()
				pare
			caso 11:
				escreva("Estrela de Neutrons\n")
				dano()
				pare
			caso 12:
			caso 13:
			caso 14:
				escreva("Ana Vermelha\n")
				pare
			caso 15:
			caso 16:
				escreva("Laranja\n")	
				pare					
		}
	}



//----------------------------------FUNﾃ�ﾃグ SORTEAR RECURSOS-------------------------------------
	funcao sortrecursos()
	{
		se(recursofix == verdadeiro)
		{	
			se(planetaatual == "Gasoso")
			{
				quantrec = u.sorteia(1, 6)
				
				para(inteiro r = 0; r < quantrec; r++)
				{
					resultadorec = u.sorteia(1,10)
					se(resultadorec == 1 ou resultadorec == 2 ou resultadorec ==3)
					{
						recurso[r] = "H"
					}
					se(resultadorec == 4 ou resultadorec == 5)
					{
						recurso[r] = "He"
					}
					se(resultadorec == 6 ou resultadorec == 7)
					{
						recurso[r] = "O"
					}
					se(resultadorec == 8)
					{
						recurso[r] = "H3"
					}
					se(resultadorec == 9 ou resultadorec == 10)
					{
						recurso[r] = "N"
					}					
				}
			}
			
			se(planetaatual == "Rochoso")
			{
				quantrec = u.sorteia(1, 6)
				
				para(inteiro r = 0; r < quantrec; r++)
				{
					resultadorec = u.sorteia(1,8)
					se(resultadorec == 1 ou resultadorec == 2 ou resultadorec ==3)
					{
						recurso[r] = "Fe"
					}
					se(resultadorec == 4 ou resultadorec == 5)
					{
						recurso[r] = "Al"
					}
					se(resultadorec == 6)
					{
						recurso[r] = "Ti"
					}
					se(resultadorec == 7 ou resultadorec == 8)
					{
						recurso[r] = "C"
					}
				}
			}
			
			se(planetaatual == "Aquatico")
			{
				quantrec = u.sorteia(1, 7)
				
				para(inteiro r = 0; r < quantrec; r++)
				{
					resultadorec = u.sorteia(1,8)
					se(resultadorec == 1 ou resultadorec ==3 ou resultadorec == 7)
					{
						recurso[r] = "H"
					}
					se(resultadorec == 2 ou resultadorec == 4 ou resultadorec == 8)
					{
						recurso[r] = "O"
					}
					se(resultadorec == 5)
					{
						recurso[r] = "H3"
					}
					se(resultadorec == 6)
					{
						recurso[r] = "Li"
					}
				}
			}
			
			se(planetaatual == "Gigante Gasoso")
			{
				quantrec = u.sorteia(1, 8)
				
				para(inteiro r = 0; r < quantrec; r++)
				{
					resultadorec = u.sorteia(1,10)
					se(resultadorec == 1 ou resultadorec == 2 ou resultadorec ==3)
					{
						recurso[r] = "H"
					}
					se(resultadorec == 4 ou resultadorec == 5 ou resultadorec == 10)
					{
						recurso[r] = "O"
					}
					se(resultadorec == 6 ou resultadorec == 7)
					{
						recurso[r] = "H3"
					}
					se(resultadorec == 8 ou resultadorec == 9)
					{
						recurso[r] = "N"
					}
				}
			}
			
			se(planetaatual == "Metalico")
			{
				quantrec = u.sorteia(1, 8)
				
				para(inteiro r = 0; r < quantrec; r++)
				{
					resultadorec = u.sorteia(1,10)
					se(resultadorec == 1 ou resultadorec == 2 ou resultadorec ==3)
					{
						recurso[r] = "Fe"
					}
					se(resultadorec == 4)
					{
						recurso[r] = "Al"
					}
					se(resultadorec == 6 ou resultadorec == 7)
					{
						recurso[r] = "Ti"
					}
					se(resultadorec == 8)
					{
						recurso[r] = "Y"
					}
					se(resultadorec == 9)
					{
						recurso[r] = "Dy"
					}
					se(resultadorec == 10 ou resultadorec == 5)
					{
						recurso[r] = "Nd"
					}
				}				
			}
			
			se(planetaatual == "Terreno")
			{
				quantrec = u.sorteia(1, 10)
				
				para(inteiro r = 0; r < quantrec; r++)
				{
					resultadorec = u.sorteia(1,13)
					se(resultadorec == 1 ou resultadorec == 2 ou resultadorec == 3)
					{
						recurso[r] = "H"
					}
					se(resultadorec == 4 ou resultadorec == 5 ou resultadorec == 10)
					{
						recurso[r] = "O"
					}
					se(resultadorec == 6)
					{
						recurso[r] = "H3"
					}
					se(resultadorec == 8 ou resultadorec == 9)
					{
						recurso[r] = "N"
					}
					se(resultadorec == 11 ou resultadorec == 12)
					{
						recurso[r] = "C"
					}
					se(resultadorec == 13)
					{
						recurso[r] = "Fe"
					}
					se(resultadorec == 7)
					{
						recurso[r] = "Al"
					}
				}
			}
			
			se(planetaatual == "Magmatico")
			{
				quantrec = u.sorteia(1, 8)
				
				para(inteiro r = 0; r < quantrec; r++)
				{
					resultadorec = u.sorteia(1,13)
					se(resultadorec == 1 ou resultadorec == 2 ou resultadorec == 12)
					{
						recurso[r] = "Fe"
					}
					se(resultadorec == 3 ou resultadorec == 7)
					{
						recurso[r] = "Al"
					}
					se(resultadorec == 6)
					{
						recurso[r] = "Ti"
					}
					se(resultadorec == 4)
					{
						recurso[r] = "Y"
					}
					se(resultadorec == 9 ou resultadorec == 10)
					{
						recurso[r] = "Dy"
					}
					se(resultadorec == 5 ou resultadorec == 11 ou resultadorec == 8)
					{
						recurso[r] = "Nd"
					}
					se(resultadorec == 12 ou resultadorec == 13)
					{
						recurso[r] = "C"
					}
				}				
			}
			
			se(planetaatual == "Cinturao de Asteroides")
			{
				quantrec = u.sorteia(1, 10)
				
				para(inteiro r = 0; r < quantrec; r++)
				{
					resultadorec = u.sorteia(1,12)
					se(resultadorec == 1 ou resultadorec == 2)
					{
						recurso[r] = "H"
					}
					se(resultadorec == 3 ou resultadorec == 4)
					{
						recurso[r] = "Fe"
					}
					se(resultadorec == 5)
					{
						recurso[r] = "H3"
					}
					se(resultadorec == 6)
					{
						recurso[r] = "Y"
					}
					se(resultadorec == 7)
					{
						recurso[r] = "Dy"
					}
					se(resultadorec == 8)
					{
						recurso[r] = "Nd"
					}
					se(resultadorec == 9)
					{
						recurso[r] = "Ti"
					}
					se(resultadorec == 10)
					{
						recurso[r] = "Li"
					}
					se(resultadorec == 11 ou resultadorec == 12)
					{
						recurso[r] = "C"
					}
				}					
			}
			
			se(planetaatual == "Gigante de Gelo")
			{
				quantrec = u.sorteia(1, 10)
				
				para(inteiro r = 0; r < quantrec; r++)
				{
					resultadorec = u.sorteia(1,6)
					se(resultadorec == 1 ou resultadorec == 2 ou resultadorec ==3)
					{
						recurso[r] = "H"
					}
					se(resultadorec == 4 ou resultadorec == 5)
					{
						recurso[r] = "O"
					}
					se(resultadorec == 6)
					{
						recurso[r] = "H3"
					}
					se(resultadorec == 7)
					{
						recurso[r] = "Li"
					}
				}				
			}

			se(planetaatual == "Amonia")
			{
				quantrec = u.sorteia(1, 10)
				
				para(inteiro r = 0; r < quantrec; r++)
				{
					resultadorec = u.sorteia(1,6)
					se(resultadorec == 1 ou resultadorec == 2 ou resultadorec ==3)
					{
						recurso[r] = "N"
					}
					se(resultadorec == 4 ou resultadorec == 5)
					{
						recurso[r] = "H"
					}
					se(resultadorec == 6)
					{
						recurso[r] = "O"
					}
					se(resultadorec == 7)
					{
						recurso[r] = "C"
					}
				}				
			}
		}recursofix = falso
	}
	


//----------------------------------FUNﾃ�ﾃグ EXIBIR SISTEMA---------------------------------------	
	funcao exibirsistema()
	{	
		para(inteiro j = 0; j < resultadosis; j++)
		{
			se(j == 0)
			{
				escreva("(")
			}
			se(j > 0)
			{
				escreva(")--(")
			}		
			escreva(j+1+"-")
			escreva(tipoplaneta[j])
			se(j+1 == resultadosis)
			{
				escreva(")\n")
			}		
		}
	}



//----------------------------------FUNﾃ�ﾃグ EXIBIR ESTRELA---------------------------------------	
	funcao exibirestrela()
	{
		se(tipoestrela == 1 ou tipoestrela == 2 ou tipoestrela == 3 ou tipoestrela == 4 ou tipoestrela == 5  ou tipoestrela == 12  ou tipoestrela == 13  ou tipoestrela == 14)
		{
			escreva("Ana Vermelha") 	
		}
		se(tipoestrela == 6 ou tipoestrela == 7  ou tipoestrela == 15  ou tipoestrela == 16)
		{
			escreva("Laranja") 	
		}
		se(tipoestrela == 8 ou tipoestrela == 9)
		{
			escreva("Branca") 	
		}
		se(tipoestrela == 10)
		{
			escreva("Azul") 	
		}
		se(tipoestrela == 11)
		{
			escreva("Estrela de Neutrons") 	
		}
	}


	
//----------------------------------FUNﾃ�ﾃグ ENTRAR EM ORBITA---------------------------------------	
	funcao orbitar()
	{		
		escreva("Escolher planeta para explorar.\n")
		exibirsistema()
		leia(escolhaplan)
		
		para(inteiro j = 0; j < resultadosis+1; j++)
		{						
			se(j == escolhaplan)
			{				
				planetaatual = tipoplaneta[j-1]
				se(planetaatual == "X")
				{
					escreva("Este planeta ja foi explorado.\n")
					planetaatual = ""
					inicio()
					pare
				}	
				escreva("\nPlaneta atual: " + planetaatual + "\n")
				sisvit = sisvit - 1
				comida = comida - 1
				dano()
				mineirar()
				pare
			}		
			se(escolhaplan != j e j == resultadosis)
			{
				escreva("Opcao invalida\n")
				orbitar()
				pare
			}
		}
	}


	
//----------------------------------FUNﾃ�ﾃグ MINEIRAR---------------------------------------	
	funcao mineirar()
	{
		sortrecursos()
		para(inteiro i = 0; i<quantrec; i++)
		{
			se(i == 0)
			{
				escreva("[")
			}
			se(i > 0)
			{
				escreva("]--[")
			}
			
			escreva(i+1+"-")
			escreva(recurso[i])
			
			se(i+1==quantrec)
			{
				escreva("]\n")
			}
		}

			se(sondaup == 0)
			{				
				combustivel = combustivel - 1
			}
			se(sondaup == 1 e contadorsonda > 0)
			{
				combustivel = combustivel - 1
			}
			se(sondaup == 2 e contadorsonda > 1)
			{
				combustivel = combustivel - 1
			}

				
		escreva("Quais recursos deseja extrair?\n")
		
		leia(escolharec)
		para(inteiro i = 0; i < quantrec; i++)
		{
			se(escolharec == i+1)
			{				
				se(recurso[i] == "X")
				{
					escreva("Voce já esgotou esta jazida.\n")
					pare
				}
				se(recurso[i] == "H")
				{
					H = H+1
				}
				se(recurso[i] == "He")
				{
					He = He+1
				}
				se(recurso[i] == "H3")
				{
					H3 = H3+1
				}
				se(recurso[i] == "O")
				{
					O = O+1
				}
				se(recurso[i] == "N")
				{
					N = N+1
				}
				se(recurso[i] == "Li")
				{
					Li = Li+1
				}
				se(recurso[i] == "Fe")
				{
					Fe = Fe+1
				}
				se(recurso[i] == "Ti")
				{
					Ti = Ti+1
				}
				se(recurso[i] == "Al")
				{
					Al = Al+1
				}
				se(recurso[i] == "Nd")
				{
					Nd = Nd+1
				}
				se(recurso[i] == "Dy")
				{
					Dy = Dy+1
				}
				se(recurso[i] == "Y")
				{
					Y = Y+1
				}
				se(recurso[i] == "C")
				{
					C = C+1
				}
				
				recurso[i] = "X"
			}
		}
		
		escreva("Deseja permanecer neste planeta?[s/n]\n")
		se(ficouplaneta == verdadeiro)
		{			
			contadorsonda = contadorsonda+1
		}
		se(sondaup == 0)
		{
			escreva("Extrair de outra jazida custara 1 ponto de combustivel.\n")
		}
		se(sondaup == 1 e contadorsonda > 0)
		{
			escreva("Extrair de outra jazida custara 1 ponto de combustivel.\n")
		}
		se(sondaup == 2 e contadorsonda > 1)
		{
			escreva("Extrair de outra jazida custara 1 ponto de combustivel.\n")
		}
		
		caracter ficarplaneta
		leia(ficarplaneta)
		se(ficarplaneta == 's')
		{
			ficouplaneta = verdadeiro
			mineirar()			
		}
		se(ficarplaneta == 'n')
		{	
			para(inteiro i = 0; i < resultadosis; i++)
			{
				se(i == escolhaplan-1)
				{
					tipoplaneta[i] = "X"
				}
			}
			recursofix = verdadeiro
			contadorsonda = 0
			ficouplaneta = falso
			inicio()
		}
		senao
		{
			recursofix = verdadeiro
			contadorsonda = 0
			ficouplaneta = falso
			inicio()
		}
	}



//----------------------------------FUNCAO INVENTARIO-------------------------------------------------
	funcao inventario()
	{
		barras()
		escreva("\n")
		
		escreva("Inventario na carga: ")
		se(H > 0)
		{	escreva("[")
			escreva("H:" + H)
			escreva("]")
		}
		
		se(He > 0)
		{	escreva("[")
			escreva("He:" + He)
			escreva("]")
		}
		
		se(H3 > 0)
		{	escreva("[")
			escreva("H3:" + H3)
			escreva("]")
		}

		se(C > 0)
		{	escreva("[")
			escreva("C:" + C)
			escreva("]")
		}
		
		se(N > 0)
		{	escreva("[")
			escreva("N:" + N)
			escreva("]")
		}
		
		se(O > 0)
		{	escreva("[")
			escreva("O:" + O)
			escreva("]")
		}
		
		se(Li > 0)
		{	escreva("[")
			escreva("Li:" + Li)
			escreva("]")
		}
		
		se(Fe > 0)
		{	escreva("[") 
			escreva("Fe:" + Fe)
			escreva("]")
		}
				
		se(Al > 0)
		{	escreva("[")
			escreva("Al:" + Al)
			escreva("]")
		}
		
		se(Ti > 0)
		{	escreva("[")
			escreva("Ti: " + Ti)
			escreva("]")
		}
		
		se(Nd > 0)
		{	escreva("[")
			escreva("Nd: " + Nd)
			escreva("]")
		}
		
		se(Dy > 0)
		{	escreva("[")
			escreva("Dy: " + Dy)
			escreva("]")
		}
		
		se(Y > 0)
		{	escreva("[")
			escreva("Y: " + Y)
			escreva("]")
		}
		escreva("\n")
		escreva("Creditos: " + creditos + "\n")
		escreva("Artefatos: ")
		escreva("||")
		para(inteiro i = 0; i < 3; i++)
		{
			se(i==0)
			{	escreva("((")
				escreva(artefatos[i])
				escreva("))")
			}
			se(i==1)
			{	escreva("[[")
				escreva(artefatos[i])
				escreva("]]")
			}
			se(i==2)
			{	escreva("{{")
				escreva(artefatos[i])
				escreva("}}")
			}
		}
		escreva("||\n")
	}


	
//----------------------------------FUNCAO REABASTECER---------------------------------------	
	funcao reabastecer()
	{
		inteiro reabastecerescolha
		escreva("Qual sistema deseja reabastecer?\n")
		escreva("1[Casco]--2[Combustivel]--3[SistemasVitais]--4[Alimento]--5|Sair\n")
		leia(reabastecerescolha)
		escolha(reabastecerescolha)
		{
			//----------------------------------CASCO---------------------------------------	
			caso 1:
				se(Fe > 0 ou Al > 0 ou Ti > 0)
				{
					inteiro metalescolha
					escreva("Qual elemento deseja usar?\n")
					escreva("1-Fe: " + Fe + " 2-Al: " + Al + " 3-Ti: " + Ti + "\n")
					leia(metalescolha)
					se(metalescolha == 1)
					{
						inteiro quantmetal
						escreva("Quanto Ferro deseja usar?\n")
						leia(quantmetal)
						se(Fe > 0)
						{
							se(Fe >= quantmetal)
							{
								Fe = Fe - quantmetal
								casco = casco + (quantmetal * 2)
								maximos()
								reabastecer()
							}
							senao
							{
								escreva("Você não tem Ferro suficiente para reparar o casco.\n")
								reabastecer()
							}
						}
						se(Fe <= 0)
						{
							escreva("Você não tem Ferro para reparar o casco.\n")
							reabastecer()
						}
					}
					se(metalescolha == 2)
					{
						inteiro quantmetal
						escreva("Quanto Aluminio deseja usar?\n")
						leia(quantmetal)
						se(Al > 0)
						{
							se(Al >= quantmetal)
							{
								Al = Al - quantmetal
								casco = casco + (quantmetal * 3)
								maximos()
								reabastecer()
							}
							senao
							{
								escreva("Você não tem Aluminio suficiente para reparar o casco.\n")
								reabastecer()
							}
						}
						se(Al <= 0)
						{
							escreva("Você não tem Aluminio para reparar o casco.\n")
							reabastecer()
						}
					}
					se(metalescolha == 3)
					{
						inteiro quantmetal
						escreva("Quanto Titanio deseja usar?\n")
						leia(quantmetal)
						se(Ti > 0)
						{
							se(Ti >= quantmetal)
							{
								Ti = Ti - quantmetal
								casco = casco + (quantmetal * 5)
								maximos()
								reabastecer()
							}
							senao
							{
								escreva("Você não tem Titanio suficiente para reparar o casco.\n")
								reabastecer()
							}
						}
						se(Ti <= 0)
						{
							escreva("Você não tem Titanio para reparar o casco.\n")
							reabastecer()
						}
					}
				}
				senao
				{
					escreva("Você não possui metais para reparar o casco.\n")
					reabastecer()
				}
				pare
				//----------------------------------COMBUSTIVEL---------------------------------------	
				caso 2:
					se(H > 0 ou He > 0 ou H3 > 0 ou Li > 0)
					{
						inteiro combuescolha
						escreva("Qual elemento deseja usar?\n")
						escreva("1-H: " + H + " 2-He: " + He + " 3-H3: " + H3 + " 4-Li: " + Li + "\n")
						leia(combuescolha)
						se(combuescolha == 1)
						{
							inteiro quantcombu
							escreva("Quanto Hidrogenio deseja usar?\n")
							leia(quantcombu)
							se(H > 0)
							{
								se(H >= quantcombu)
								{
									H = H - quantcombu
									combustivel = combustivel + (quantcombu * 2)
									maximos()
									reabastecer()
								}
								senao
								{
									escreva("Você não tem esta quantidade de Hidrogenio para abastecer o reator.\n")
									reabastecer()
								}
							}
							se(H <= 0)
							{
								escreva("Você não tem Hidrogenio para abastecer o reator.\n")
								reabastecer()
							}
						}
						se(combuescolha == 2)
						{
							inteiro quantcombu
							escreva("Quanto Helio deseja usar?\n")
							leia(quantcombu)
							se(He > 0)
							{
								se(He >= quantcombu)
								{
									He = He - quantcombu
									combustivel = combustivel + (quantcombu * 3)
									maximos()
									reabastecer()
								}
								senao
								{
									escreva("Você não tem esta quantidade de Helio para abastecer o reator.\n")
									reabastecer()
								}
							}
							se(He <= 0)
							{
								escreva("Você não tem Helio para abastecer o reator.\n")
								reabastecer()
							}
						}
						se(combuescolha == 3)
						{
							inteiro quantcombu
							escreva("Quanto Tritio deseja usar?\n")
							leia(quantcombu)
							se(H3 > 0)
							{
								se(H3 >= quantcombu)
								{
									H3 = H3 - quantcombu
									combustivel = combustivel + (quantcombu * 5)
									maximos()
									reabastecer()
								}
								senao
								{
									escreva("Você não tem esta quantidade de Tritio para abastecer o reator.\n")
									reabastecer()
								}
							}
							se(H3 <= 0)
							{
								escreva("Você não tem Tritio para abastecer o reator.\n")
								reabastecer()
							}
						}
						se(combuescolha == 4)
						{
							se(Li > 0)
							{
								escreva("O Lítio preencheu todo tanque.\n")
								Li = Li - 1
								combustivel = combustivel + 20
								maximos()
								reabastecer()
							}
							se(Li <= 0)
							{
								escreva("Você não tem Litio para abastecer o reator.\n")
								reabastecer()
							}
						}
					}
					senao
					{
						escreva("Você não possui elementos para abastecer o reator.\n")
						reabastecer()
					}
					pare
					//----------------------------------SISTEMAS VITAIS---------------------------------------	
					caso 3:
						se(H > 0 ou He > 0 ou O > 0)
						{
							inteiro sisvitescolha
							escreva("Qual elemento deseja usar?\n")
							escreva("1-H: " + H + " 2-He: " + He + " 3-O: " + O)
							se(sisvitup == 1)
							{
								escreva(" 4-Fe: " + Fe)
							}
							se(sisvitup == 2)
							{
								escreva(" 4-Fe: " + Fe + " 5-H3 " + H3)
							}
							escreva("\n")
							leia(sisvitescolha)
							se(sisvitescolha == 1)
							{
								inteiro quantsisvit
								escreva("Quanto Hidrogenio deseja usar?\n")
								leia(quantsisvit)
								se(H > 0)
								{
									se(H >= quantsisvit)
									{
										H = H - quantsisvit
										sisvit = sisvit + (quantsisvit * 2)
										maximos()
										reabastecer()
									}
									senao
									{
										escreva("Você não tem esta quantidade de Hidrogenio para abastecer os Sistemas Vitais.\n")
										reabastecer()
									}
								}
								se(H <= 0)
								{
									escreva("Você não tem Hidrogenio para abastecer os Sistemas Vitais.\n")
									reabastecer()
								}
							}
							se(sisvitescolha == 2)
							{
								inteiro quantsisvit
								escreva("Quanto Helio deseja usar?\n")
								leia(quantsisvit)
								se(He > 0)
								{
									se(He >= quantsisvit)
									{
										He = He - quantsisvit
										sisvit = sisvit + (quantsisvit * 3)
										maximos()
										reabastecer()
									}
									senao
									{
										escreva("Você não tem esta quantidade de Helio para abastecer os Sistemas Vitais.\n")
										reabastecer()
									}
								}
								se(He <= 0)
								{
									escreva("Você não tem Helio para abastecer os Sistemas Vitais.\n")
									reabastecer()
								}
							}
							se(sisvitescolha == 3)
							{
								inteiro quantsisvit
								escreva("Quanto Oxigenio deseja usar?\n")
								leia(quantsisvit)
								se(O > 0)
								{
									se(O >= quantsisvit)
									{
										O = O - quantsisvit
										sisvit = sisvit + (quantsisvit * 5)
										maximos()
										reabastecer()
									}
									senao
									{
										escreva("Você não tem esta quantidade de Oxigenio para abastecer os Sistemas Vitais.\n")
										reabastecer()
									}
								}
								se(O <= 0)
								{
									escreva("Você não tem Oxigenio para abastecer os Sistemas Vitais.\n")
									reabastecer()
								}
							}
							se(sisvitescolha == 4 e sisvitup == 1)
							{
								inteiro quantsisvit
								escreva("Quanto Ferro deseja usar?\n")
								leia(quantsisvit)
								se(Fe > 0)
								{
									se(Fe >= quantsisvit)
									{
										Fe = Fe - quantsisvit
										sisvit = sisvit + (quantsisvit * 3)
										maximos()
										reabastecer()
									}
									senao
									{
										escreva("Você não tem esta quantidade de Ferro para abastecer os Sistemas Vitais.\n")
										reabastecer()
									}
								}
								se(Fe <= 0)
								{
									escreva("Você não tem Ferro para abastecer os Sistemas Vitais.\n")
									reabastecer()
								}
							}
							se(sisvitescolha == 5 e (sisvitup == 1 ou sisvitup == 2))
							{
								inteiro quantsisvit
								escreva("Quanto Tritio deseja usar?\n")
								leia(quantsisvit)
								se(H3 > 0)
								{
									se(H3 >= quantsisvit)
									{
										H3 = H3 - quantsisvit
										sisvit = sisvit + (quantsisvit * 3)
										maximos()
										reabastecer()
									}
									senao
									{
										escreva("Você não tem esta quantidade de Tritio para abastecer os Sistemas Vitais.\n")
										reabastecer()
									}
								}
								se(H3 <= 0)
								{
									escreva("Você não tem Tritio para abastecer os Sistemas Vitais.\n")
									reabastecer()
								}
							}
						}
						senao
						{
							escreva("Você não possui elementos para abastecer os Sistemas Vitais.\n")
							reabastecer()
						}
						pare
						//----------------------------------ALIMENTOS---------------------------------------	
					caso 4:
						se((H >= 1 e C >= 1 e O >= 1) ou (H >= 1 e N >= 1 e O >= 1))
						{
							escreva("Qual base sera usada para criar a comida?\n")
							escreva("1-C :" + C + " 2-N: " + N + "\n")
							inteiro comidaescolha
							leia(comidaescolha)
							se(comidaescolha == 1)
							{
								C = C -1
								O = O -1
								H = H -1
								comida = comida + 5
								maximos()
								escreva("5 pacotes de racao foram criados.\n")
								reabastecer()
							}
							se(comidaescolha == 2)
							{
								N = N -1
								O = O -1
								H = H -1
								comida = comida + 10
								maximos()
								escreva("10 pacotes de racao foram criados.\n")
								reabastecer()
							}
							senao
							{
								escreva("Opcao invalida ou elementos insuficientes.\n")
								reabastecer()
							}
						}
						senao
						{
							escreva("Você não possui elementos para criar pacotes de racao.\n")
							reabastecer()
						}
						pare
					caso 5:
						inicio()
						pare	
		}
	}



//----------------------------------FUNCAO DANO---------------------------------------------------------------------------------
	funcao dano()
	{
		
		se((tipoestrela == 8 ou tipoestrela == 9) e danoestrela == verdadeiro)
		{
			danoestrela = falso
			casco = casco - 1
		}
		se(tipoestrela == 10 e danoestrela == verdadeiro)
		{
			danoestrela = falso
			casco = casco - 2
		}
		se(tipoestrela == 11 e danoestrela == verdadeiro)
		{
			danoestrela = falso
			casco = casco - 3
		}
		se(planetaatual == "Metalico" ou planetaatual == "Gigante de Gelo" ou planetaatual == "Gigante Gasoso")
		{
			casco = casco - 1
			conferencia()
		}
		se(planetaatual == "Magmatico")
		{
			casco = casco - 2
			conferencia()
		}
		se(escolhaplan == 1)
		{
			escreva("Planeta muito próximo da estrela, o casco sofreu dano.\n")
			casco = casco - 1
			conferencia()
		}
	}
	 
	
	 
//----------------------------------FUNCAO EVENTO---------------------------------------------------------------------------------
	funcao evento()
	{
		inteiro eventosort = u.sorteia(1, 15)
		escolha(eventosort)
		{
			//------------------------BURACO NEGRO---------------------------------------
			caso 1:
				escreva("Você encontrou um buraco negro durante a transferencia.\n")
				escreva("Usar 2 unidades de combustivel para escapar?[s/n]\n")
				caracter escolhaburaco
				leia(escolhaburaco)
				se(escolhaburaco == 's')
				{
					combustivel = combustivel - 2
				}
				senao
				{
					escreva("Você não conseguiu escapar do evento horizonte e sua nave foi sugada para o buraco negro. Voce morreu. Deseja continuar?[s/n]\n")
					caracter continua
					leia(continua)
					se(continua == 's')
					{
						continuar()
						inicio()
					}
					senao
					{
						sair()
					}					
				}
				pare
			//------------------------BATALHA ESPACIAL---------------------------------------	
			caso 2:
				escreva("Ao chegar no sistema você terminou a transferencia no meio de um campo de batalha entre o fogo cruzado.\n")
				escreva("Você sofreu 2 de dano.\n")
				casco = casco - 2				
				pare
			//------------------------PARAÍSO---------------------------------------	
			caso 3:
				escreva("Você encontrou um planeta paraíso.\n")
				escreva("Deseja explora-lo?[s/n]\n")
				caracter escolhaparaiso
				leia(escolhaparaiso)
				se(escolhaparaiso == 's')
				{
					escreva("Um planeta repleto de riquezas e formas de vida unicas!\n")
					creditos = creditos + 500
					tipoartefato = 1
					artefato()
				}
				se(escolhaparaiso == 'n')
				{
					inicio()
				}
				pare
			//------------------------NADA---------------------------------------
			caso 4:
			caso 5:
				inicio()
				pare
			//------------------------FORMA DE VIDA---------------------------------------	
			caso 6:
				escreva("Você encontrou uma forma de vida no meio do espaco, deseja averiguar?[s/n]\n")
				caracter escolhaformavida
				leia(escolhaformavida)
				se(escolhaformavida == 's')
				{
					inteiro formasort = u.sorteia(1, 3)
					se(formasort == 1)
					{
						escreva("Você encontrou uma forma de vida.\n")
						tipoartefato = 1
						artefatoid = 3
						artefato()
					}
					se(formasort == 2)
					{
						escreva("O piloto da nave entrou em panico, desobedeceu ordens e fugiu da forma de vida.\n")
						combustivel = combustivel - 1
					}
					se(formasort == 3)
					{
						escreva("A forma de vida é agressiva e atacou a nave. Você sofreu 1 ponto de dano.\n")
						casco = casco - 1
					}
				}
				se(escolhaformavida == 'n')
				{
					inicio()
				}
				pare
			//------------------------INSPECAO---------------------------------------	
			caso 7:
				escreva("Ao chegar no sistema sua nave foi barrada para inspecao das autoridades. Deseja fugir da barreira?[s/n]\n")
				caracter barreirainsp
				leia(barreirainsp)
				se(barreirainsp == 's')
				{
						escreva("As autoridades abrem fogo Sua nave e atingida duramente.\n")
						casco = casco - 3
				}
				se(barreirainsp == 'n')
				{		
						inteiro barreirasort = u.sorteia(1, 3)
						se(Nd > 0 e barreirasort == 1 )
						{				
							escreva("As autoridades encontraram itens considerados ilegais e os confiscaram.\n")
							Nd = Nd - 1
						}
						se(Dy > 0 e barreirasort == 2 )
						{				
							escreva("As autoridades encontraram itens considerados ilegais e os confiscaram.\n")
							Dy = Dy - 1
						}
						se(Y > 0 e barreirasort == 3 )
						{				
							escreva("As autoridades encontraram itens considerados ilegais e os confiscaram.\n")
							Dy = Dy - 1
						}
						senao
						{
							escreva("Nada de ilegal foi encontrado, siga a viagem.\n")
						}							
				}
				pare
			//------------------------PLANETA ESTRANHO---------------------------------------	
			caso 8:
				escreva("Voce encontrou um planeta estranho. Deseja explora-lo?[s/n]\n")
				caracter escolhaplanestranho
				leia(escolhaplanestranho)
				se(escolhaplanestranho == 's')
				{
					inteiro estranhosort = u.sorteia(1, 5)
					se(estranhosort == 1)
					{
						escreva("Você encontrou uma forma de vida estranha.\n")
						tipoartefato = 1
						artefato()
					}
					se(estranhosort == 2)
					{
						escreva("Voce encontrou um item desconhecido.\n")
						tipoartefato = 3
						artefato()
					}
					se(estranhosort == 3)
					{
						escreva("O planeta possui um fungo devorador de metais, seu casco sofreu 2 de dano.\n")
						casco = casco - 2
					}
					se(estranhosort == 4)
					{
						escreva("O planeta estranho causa pesadelos bizarros na tripulacao fazendo-os cometer atos ilogicos. Os Sistemas Vitais foram danificados pela tripulacao.\n")
						sisvit = sisvit - 1
					}
					se(estranhosort == 5)
					{
						escreva("A sonda encontrou um grupo de exploracao abandonado no planeta. A tripulacao coletou os itens usaveis.\n")
						combustivel = combustivel +2
						H = H + 1
						Fe = Fe + 1
						C = C + 1
					}
				}
				se(escolhaplanestranho == 'n')
				{
					inicio()
				}
				pare
			//------------------------NADA---------------------------------------	
			caso 9:
				inicio()
				pare
			//------------------------SINAL DESCONHECIDO---------------------------------------	
			caso 10:
				escreva("A tripulacao encontrou um sinal desconhecido. Deseja explora-lo?[s/n]\n")
				caracter escolhasinaldes
				leia(escolhasinaldes)
				se(escolhasinaldes == 's')
				{
					inteiro sinalsort = u.sorteia(1, 4)
					se(sinalsort == 1)
					{
						escreva("Você encontrou um objeto do passado distante.\n")
						tipoartefato = 2
						artefato()
					}
					se(sinalsort == 2)
					{
						escreva("Voce encontrou um item desconhecido.\n")
						tipoartefato = 3
						artefato()
					}
					se(sinalsort == 3)
					{
						escreva("O sinal estava enviando um chamariz de ajuda de uma nave abandonada mas infelizmente a tripulacao morreu faz tempo. Sua tripulacao coletou os itens usaveis.\n")
						comida = comida + 2
						He = He + 2
						Nd = Nd + 1					
					}
					se(sinalsort == 4)
					{
						escreva("Uma armadilha de bandoleiros! Sua tripulacao entrou em combate e sofreu baixas.\n")
						casco = casco - 1
						sisvit = sisvit - 1
					}
				}
				pare
			//------------------------SUPERNOVA---------------------------------------	
			caso 11:
				escreva("Durante a transferencia sua nave passou por resquicios radioativos de uma supernova.\n")
				sisvit = sisvit - 2
				casco = casco - 2
				pare
			//------------------------NAVE CRIOGENICA---------------------------------------	
			caso 12:
				escreva("Você encontrou uma embarcacao que parece ser uma nave geracional criogenica. Deseja explora-la?[s/n]\n")
				caracter escolhacrio
				leia(escolhacrio)
				se(escolhacrio == 's')
				{
					inteiro criosort = u.sorteia(1, 3)
					se(criosort == 1)
					{
						escreva("Você encontrou um grupo de sobreviventes de séculos atrás, eles agradecem por terem sido acordados e recompensam a tripulacao.\n")
						Dy = Dy + 1
					}
					se(criosort == 2)
					{
						escreva("Você encontrou humanos de séculos atrás, mas os sistemas de preservacao falharam há muito tempo e ninguem sobreviveu, mas voce encontrou um artefato do passado.\n")
						tipoartefato = 2
						artefato()
					}
					se(criosort == 3)
					{
						escreva("Uma criatura alienigena agressiva usou a embarcacao para fazer seu ninho. Ao combate-la sua tripulacao sofreu baixas.\n")
						casco = casco -1
						sisvit = sisvit - 1
					}
				}
				se(escolhacrio == 'n')
				{
					inicio()
				}				
				pare
			caso 13:
			caso 14:
				inicio()
				pare
			//------------------------PEDIDO DE AJUDA---------------------------------------		
			caso 15:
				escreva("Você recebeu um pedido de ajuda. Deseja responder?[s/n]\n")
				caracter escolhaajuda
				leia(escolhaajuda)
				se(escolhaajuda == 's')
				{
					inteiro ajudasort = u.sorteia(1,2)
					se(ajudasort == 1)
					{
						inteiro tipoajuda = u.sorteia(1, 3)
						se(tipoajuda == 1)
						{
							escreva("A tripulacao precisa de 2 unidades de combustivel para poderem seguir viagem. Deseja ajudar?[s/n]\n")
							caracter ajudacombu
							leia(ajudacombu)
							se(ajudacombu == 's')
							{
								escreva("Eles agradecem e nos presenteiam com 2 unidades de comida.\n")
								combustivel = combustivel - 2
								comida = comida + 2
							}
							se(ajudacombu == 'n')
							{
								escreva("Voce abandona a tripulacao no vazio do espaco.\n")
							}
						}
						se(tipoajuda == 2)
						{
							escreva("A tripulacao faminta de 2 pacotes de racao para poderem seguir viagem. Deseja ajudar?[s/n]\n")
							caracter ajudacomida
							leia(ajudacomida)
							se(ajudacomida == 's')
							{
								escreva("Eles agradecem e nos presenteiam com 1 unidade de Itrio.\n")
								comida = comida - 1
								Y = Y + 1	
							}
							se(ajudacomida == 'n')
							{
								escreva("Voce abandona a tripulacao no vazio do espaco.\n")
							}
						}
						se(tipoajuda == 3)
						{
							escreva("A tripulacao quase sufocando precisa de 1 unidade de ar(Sistema Vital) para poderem seguir viagem. Deseja ajudar?[s/n]\n")
							caracter ajudasisvit
							leia(ajudasisvit)
							se(ajudasisvit == 's')
							{
								escreva("Eles se revelam como uma delegacao de diplomatas ricos e nos presenteiam com 400 creditos.\n")
								sisvit = sisvit - 1
								creditos = creditos + 400
							}
							se(ajudasisvit == 'n')
							{
								escreva("Voce abandona a tripulacao no vazio do espaco.\n")
							}
						}
					}
					se(ajudasort == 2)
					{
						escreva("Uma armadilha de bandoleiros! A tripulacao entra em combate e sofre baixas!\n")
						casco = casco - 1
						sisvit = sisvit - 1					
					}
				}
				se(escolhaajuda == 'n')
				{
					inicio()	
				}
		}		
	}



//----------------------------------FUNCAO ARTEFATO---------------------------------------------------------------------------------
	funcao artefato()
	{
		se(artefatoum == falso)
		{
			se(tipoartefato == 1)
			{
				inteiro i = 0
				artefatoid = u.sorteia(1, 4)
				escolha(artefatoid)
				{
					caso 1:						
						
						artefatos[i] = "Canguru gigante"
						artefatoum = verdadeiro
						pare
					caso 2:
						
						artefatos[i] = "Unicornio de dois chifres"
						artefatoum = verdadeiro
						pare
					caso 3:
						
						artefatos[i] = "Capivara girafa"
						artefatoum = verdadeiro
						pare
					caso 4:
						
						artefatos[i] = "Ovo estranho"
						artefatoum = verdadeiro
						pare				
				}
			}
		}
		se(artefatodois == falso)
		{
			se(tipoartefato == 2)
			{
				inteiro i = 1
				artefatoid = u.sorteia(1, 4)
				escolha(artefatoid)
				{
					caso 1:				
						
						artefatos[i] = "Walkman"
						artefatodois = verdadeiro
						pare
					caso 2:
						
						artefatos[i] = "Atari"
						artefatodois = verdadeiro
						pare
					caso 3:
						
						artefatos[i] = "Tesla Roadster"
						artefatodois = verdadeiro
						pare
					caso 4:
						
						artefatos[i] = "Monalisa"
						artefatodois = verdadeiro
						pare				
				}
			}
		}
		se(artefatotres == falso)
		{
			se(tipoartefato == 3)
			{
				inteiro i = 2
				artefatoid = u.sorteia(1, 4)
				escolha(artefatoid)
				{
					caso 1:						
						artefatos[i] = "Tabua alienigena"
						artefatotres = verdadeiro
						pare
					caso 2:
						artefatos[i] = "Computador estranho"
						artefatotres = verdadeiro
						pare
					caso 3:
						artefatos[i] = "Mensagem indecifravel"
						artefatotres = verdadeiro
						pare
					caso 4:
						artefatos[i] = "Medalhao desconhecido"
						artefatotres = verdadeiro
						pare				
				}
			}
		}
	}



//----------------------------------FUNﾃ�ﾃグ TROCAR SISTEMA---------------------------------------	
	funcao trocarsistema()
	{
		conferencia()
		se(combustivel <= 0)
		{
			escreva("Voce precisa reabastecer o reator antes de mudar de sistema.\n")
			inicio()
		}
		senao
		{
			se(motorup == 0)
			{
				se(combustivel >= 3)
				{
					evento()
					combustivel = combustivel - 3
					sisvit = sisvit - 1
					comida = comida - 1
					trocasis = verdadeiro
				}
				senao
				{
					escreva("Voce precisa reabastecer o reator antes de mudar de sistema.\n")
				}
			}
			se(motorup == 1)
			{
				se(combustivel >= 2)
				{
					evento()
					combustivel = combustivel - 2
					sisvit = sisvit - 1
					comida = comida - 1
					trocasis = verdadeiro
				}
				senao
				{
					escreva("Voce precisa reabastecer o reator antes de mudar de sistema.\n")
				}
			}
			se(motorup == 2)
			{
				se(combustivel >= 1)
				{
					evento()
					combustivel = combustivel - 1
					sisvit = sisvit - 1
					comida = comida - 1
					trocasis = verdadeiro
				}
			}
		}
	}


	
//----------------------------------FUNﾃ�ﾃグ SAIR---------------------------------------	
	funcao sair()
	{
		u.aguarde(1000)
		escreva("Se o programa não fechar, aperte [SHIFT] + [F7]\n")
	}



//----------------------------------FUNCAO CONFERENCIA---------------------------------------------------------------------------------
	funcao conferencia()
	{
		maximos()
		se(combustivel <= 0 e (H==0 ou He==0 ou H3 == 0 ou Li ==0))
		{
			escreva("Você não possui combustivel suficiente. Deseja pedir ajuda?\n")
			se(loja == 1)
			{
				escreva("Ajuda da Loja custara 100 creditos por combustivel. Deseja continuar?[s/n]\n")
				caracter continualoja
				leia(continualoja)
				se(continualoja == 's')
				{
					escreva("Quantas unidades?\n")
					inteiro continuacombu
					leia(continuacombu)
					se(continuacombu > 0)
					{
						combustivel = combustivel + (1*continuacombu)
						creditos = creditos - (100*continuacombu)
						inicio()	
					}
				}
			}
			senao
			{
				escreva("Você enviou um chamariz de ajuda, espere...\n")
				inteiro chamariz = u.sorteia(1, 6)
				se((chamariz == 1 ou chamariz == 2) e creditos >= 50)
				{
					escreva("Uma nave próxima resolveu te ajudar por um preço.\n")
					combustivel = combustivel + 3
					creditos = creditos - 50
				}
				senao
				{
					escreva("Você vagou pelo espaco sem fim e a tripulacao morreu de fome. Deseja continuar?[s/n]\n")
					caracter continua
					leia(continua)
					se(continua == 's')
					{
						continuar()
						inicio()
					}
					se(continua == 'n')
					{
						sair()
					}
				}
			}
			inicio()
		}
		se(casco <= 0)
		{
			escreva("A nave sofreu dano crítico e explodiu. A tripulacao morreu. Comecar de novo?[s/n]\n")
			caracter continua
			leia(continua)
			se(continua == 's')
			{
				continuar()
				inicio()
			}
			se(continua == 'n')
			{
				sair()
			}
		}
		se(sisvit <= 0 e (He==0 ou O==0 ou H==0))
		{
			escreva("Os sistemas vitais desligaram por falta de abastecimento e a tripulacao morreu. Comecar de novo?[s/n]\n")
			caracter continua
			leia(continua)
			se(continua == 's')
			{
				continuar()
				inicio()
			}
			se(continua == 'n')
			{
				sair()
			}
		}
		se(comida <= 0 e (N==0 ou C==0) e (H==0 e O==0))
		{
			escreva("As racoes acabaram e a tripulacao morreu de fome. Comecar de novo?[s/n]\n")
			caracter continua
			leia(continua)
			se(continua == 's')
			{
				continuar()
				inicio()
			}
			se(continua == 'n')
			{
				sair()
			}
		}maximos()
	}



//----------------------------------FUNCAO CONFERENCIA---------------------------------------------------------------------------------
	funcao placar()
	{
		se(creditos >= 10000 e placarcreditos == verdadeiro)
		{
			escreva("Voce venceu! Agora a tripulacao pode se aposentar e descansar com a fortuna acumulada.\n")
			escreva("Deseja continuar?[s/n]\n")
			caracter continuaplacar
			leia(continuaplacar)
			se(continuaplacar == 's')
			{
				placarcreditos = falso
				inicio()
			}
			senao
			{
				placarcreditos = falso
				sair()
			}
		}
		se(artvit == 0)
		{
			para(inteiro i = 0; i < 3; i++)
			{
				se(artefatos[0] == "Vazio")
				{		
					pare			
				}
				senao se(artefatos[1] == "Vazio")
				{		
					pare			
				}
				senao se(artefatos[2] == "Vazio")
				{		
					pare			
				}
				senao
				{
					artvit = 1
					pare	
				}
			}
			se(artvit == 1)		
			{
				artvit = 2
				escreva("Voce venceu! Todos artefatos foram encontrados e voce foi recompensado com uma fortuna.\n")
				escreva("Deseja continuar?[s/n]\n")
				caracter continuaplacar
				leia(continuaplacar)
				se(continuaplacar == 's' e placarartefatos == verdadeiro)
				{			
					artvit = 2	
					placarartefatos = falso
					inicio()
					
				}
				se(continuaplacar == 'n')
				{
					placarartefatos = falso
					sair()
				}
					
			}
		}
		se(Nd >= 10 e Dy >=10 e Y >= 10 e placarmetais == verdadeiro)
		{
			escreva("Você venceu! Com esta quantidade de metais raros você pode retornar a Terra e salvar a populacao terraquea.\n")
			escreva("Deseja continuar?[s/n]\n")
			caracter continuaplacar
			leia(continuaplacar)
			se(continuaplacar == 's')
			{
				placarmetais = falso
			}
			senao
			{
				placarmetais = falso
				sair()
			}
		}
		se(placarmetais == falso e placarartefatos == falso e placarcreditos == falso)
		{
			escreva("Você é o maior e mais conhecido capitao interestelar, todos repetem pelo seculos os seus feitos!\n")
		}
	}


	
//----------------------------------FUNCAO CONTINUAR----------------------------------------------------------------------------------
	funcao continuar()
	{
		casco = 20
		sisvit = 20
		comida = 20
		combustivel = 20
		creditos = 50
		cascoup = 0
		sondaup = 0
		motorup = 0
		sisvitup = 0
		trocasis = verdadeiro
		recursofix = verdadeiro		
		H = 0
		He = 0
		H3 = 0
		Li = 0
		Fe = 0
		Al = 0
		Ti = 0
		C = 0
		N = 0
		O = 0
		Nd = 0
		Dy = 0
		Y = 0
		planetaatual = ""
		tipoartefato = 0
		artefatoum = falso
		
		artefatodois = falso
		
		artefatotres = falso

		para(inteiro i = 0; i < 3; i++)
		{
			artefatos[i] = "Vazio"
		}
	}



//----------------------------------FUNCAO BARRAS[CASCO]-[COMBUSTIVEL]-[SISTEMAS VITAIS]-[COMIDA]---------------------------------------
	funcao barras()
	{
		escreva("Casco")
		escreva("|")
		para(inteiro i = 0; i < 21; i++)
		{
			barracasco[i] = "D"
			se(i == casco)
			{
				barracasco[i] = "|" + t.inteiro_para_cadeia(casco, 10) + "|"
			}escreva(barracasco[i])
		}
		escreva("|")

		escreva("---Combustivel")
		escreva("|")
		para(inteiro i = 0; i < 21; i++)
		{
			barracombu[i] = "□"

			se(i == combustivel)
			{
				
				barracombu[i] = "|" + t.inteiro_para_cadeia(combustivel, 10) + "|"
				
			}escreva(barracombu[i])
		}
		escreva("|")
		
		escreva("---Sistemas Vitais")
		escreva("|")
		para(inteiro i = 0; i < 21; i++)
		{
			barrasisvit[i] = "O"
			se(i == sisvit)
			{
				barrasisvit[i] = "|" + t.inteiro_para_cadeia(sisvit, 10) + "|"
			}escreva(barrasisvit[i])
		}
		escreva("|")

		escreva("---Comida")
		escreva("|")
		para(inteiro i = 0; i < 21; i++)
		{
			barracomida[i] = "#"
			se(i == comida)
			{
				barracomida[i] = "|" + t.inteiro_para_cadeia(comida, 10) + "|"
			}escreva(barracomida[i])
		}
		escreva("|")
	}



//----------------------------------FUNCAO QUANTIDADES MAXIMAS----------------------------------------------------------------------------------
	funcao maximos()
	{
		const inteiro CASCOMAX = 20
		const inteiro SISVITMAX = 20
		const inteiro COMBUMAX = 20
		const inteiro COMIDAMAX = 20
		const inteiro HMIN = 0
		const inteiro HEMIN = 0
		const inteiro H3MIN = 0
		const inteiro LIMIN = 0
		const inteiro FEMIN = 0
		const inteiro ALMIN = 0
		const inteiro TIMIN = 0
		const inteiro OMIN = 0
		const inteiro CMIN = 0
		const inteiro NMIN = 0
		const inteiro NDMIN = 0
		const inteiro DYMIN = 0
		const inteiro YMIN = 0
		se(casco >= CASCOMAX)
		{
			casco = 20
		}
		se(sisvit >= SISVITMAX)
		{
			sisvit = 20
		}
		se(combustivel >= COMBUMAX)
		{
			combustivel = 20
		}
		se(comida >= COMIDAMAX)
		{
			comida = 20
		}
		se(H <= HMIN)
		{
			H = 0
		}
		se(He <= HEMIN)
		{
			He = 0
		}
		se(H3 <= H3MIN)
		{
			H3 = 0
		}
		se(Li <= LIMIN)
		{
			Li = 0
		}
		se(Fe <= FEMIN)
		{
			Fe = 0
		}
		se(Al <= ALMIN)
		{
			Al = 0
		}
		se(Ti <= TIMIN)
		{
			Ti = 0
		}
		se(C <= CMIN)
		{
			C = 0
		}
		se(N <= NMIN)
		{
			N = 0
		}
		se(O <= OMIN)
		{
			O = 0
		}
		se(Nd <= NDMIN)
		{
			Nd = 0
		}
		se(Dy <= DYMIN)
		{
			Dy = 0
		}
		se(Y <= YMIN)
		{
			Y = 0
		}		
	}


		
//----------------------------------FUNﾃ�ﾃグ AJUDA--------------------------------------------------------------------------------------
	funcao ajuda()
	{
		escreva("Deseja ajuda sobre?\n")
		escreva("1- Planetas   2-Estrelas   3-Elementos   4-Nave   5-Condicoes de Vitoria   6-Sair\n")
		inteiro selecaoajuda
		leia(selecaoajuda)
		escolha(selecaoajuda)
		{
			caso 1:
				escreva("Cada planeta possui um recurso em maior abundancia em ordem decrescente: [++]Abundante-[+]Quantidade normal \n")
				escreva("Planetas rochosos: ++minerais e +metais.\n")
				escreva("Planetas gasosos: ++combustivel para o reator e +elementos para sistemas vitais da tripulacao.\n")
				escreva("Planetas aquaticos: ++elementos para sistemas vitais da tripulacao e +combustivel para o reator.\n")
				escreva("Planetas magmaticos ++metais e +metais raros, mas sao perigosos para exploracao.\n")
				escreva("Planetas terrenos: ++elementos para sistemas vitais e 2-metais, alem de possuirem lojinha.\n")
				escreva("Planetas metalicos: ++metais e metais raros e +minerais.\n")
				escreva("Cinturoes de Asteroides: possuem todo o tipo de recursos e possuem uma estacao espacial com loja.\n")
				escreva("Gigantes de Gelo: +elementos para sistemas vitais e +combustivel para o reator, alem de serem perigosos para exploracao.\n")
				escreva("Planetas de amonia: ++elementos para sistemas vitais e +combustivel para o reator.\n")
				escreva("\nO primeiro planeta no sistema esta muito proximo da estrela e viajar ate ele causa 1 de dano ao casco")
				ajuda()
				pare
			caso 2:
				escreva("Estrelas podem causar dano a nave mesmo que esta esteja distante.\n") 
				escreva("Estrelas brancas causam 1 de dano ao casco \nAzuis causam 2 e \nEstrelas de Neutrons causam 3.\n")
				ajuda()
				pare
			caso 3:
				escreva("Elementos diferentes servem para diferentes funcoes dentro da nave e fora dela.\n")
				escreva("{H}Hidrogenio pode ser usado para produzir combustivel e necessario para comida.\n")
				escreva("{He}Helio e necessario para produzir combustivel.\n")
				escreva("{H3}Tritio pode ser usado para produzir combustivel mas tambem possivel de alimentar os sistemas vitais se este sistema estiver aprimorado.\n")
				escreva("{Li}Litio produz combustivel e apenas 1 unidade de Li e necessario para abastecer o reator.\n")
				escreva("{Fe}Ferro pode ser usado para reparar o casco ou alimentar os sistemas vitais se este sistema estiver aprimorado.\n")
				escreva("{Al}Aluminio pode ser usado para reparar o casco.\n")
				escreva("{Ti}Titanio pode ser usado para reparar o casco.\n")
				escreva("{O}Oxigenio e necessario para alimentar sistemas vitais e produzir comida.\n")
				escreva("{C}Carbono e uma das opcoes para produzir comida.\n")
				escreva("{N}Nitrogenio e uma das opcoes para produzir comida.\n")
				escreva("{Nd}Neodimio e um metal raro que serve como moeda ou condicao para vencer o jogo.\n")
				escreva("{Dy}Disprosio e um metal raro que serve como moeda ou condicao para vencer o jogo.\n")
				escreva("{Y}Itrio e um metal raro que serve como moeda ou condicao para vencer o jogo.\n")
				ajuda()
				pare
			caso 4:
				escreva("Para subsistencia da tripulacao a nave necessita de sistemas para explorar o espaco.\n")
				escreva("O casco serve para proteger a nave e a tripulacao dos perigos externos. Se aprimorado, o dano contra a embarcacao e amortecido.\n")
				escreva("O motor/reator e o combustivel sao necessarios para viajar em velocidades extremas. Se aprimorado, menos combustivel e usado durante transferencias.\n")	
				escreva("Os sistemas vitais são responsaveis em manter as condicoes de vida necessarias para existência humana. Se aprimorado, mais elementos podem ser usados no reabastecimento.\n")	
				escreva("A sonda e o sofisticado robô que explora os planetas e coleta os recursos. Se aprimorado, usara menos combustivel a cada jazida explorada.\n")
				ajuda()
				pare
			caso 5:
				escreva("Para vencer o jogo o jogador precisa cumprir 1 das condicoes para vitoria:\n")		
				escreva("1-Reunir 3 artefatos de tipos diferentes:(biologico)[historico]{alienigena}.\n")	
				escreva("2-Alcancar 10000 creditos.\n")	
				escreva("3-Possuir 10 unidades de Neodimio, Disprosio e Itrio.\n")	
				ajuda()
				pare
			caso 6:
				inicio()
				pare
		}							
					
	}	

	

//----------------------------------FUNCAO LOJA---------------------------------------	
	funcao lojinha()
	{
		escreva("Bem-vindo a Loja! Deseja comprar ou vender ou sair?[c/v/s]\n")
		caracter compravenda
		leia(compravenda)
		se(compravenda == 's')
		{
			inicio()	
		}
		
		se(compravenda == 'v')
		{
			escreva("Quais metais raros deseja vender?\n")
			escreva("(Nd): " + Nd + "[Dy]: " + Dy + "{Y}: " + Y + "\n")
			inteiro vendaescolha
			inteiro quantescolha
			leia(vendaescolha)
			escolha(vendaescolha)
			{				
				caso 1:
					se(Nd > 0)
					{
						escreva("Quanto Neodimio deseja vender?\n")
						leia(quantescolha)
						se(Nd <= quantescolha)
						{
							Nd = Nd - quantescolha
							creditos = creditos + (quantescolha * 100)
							escreva(quantescolha + "Neodimio(s) vendido(s).\n")
							lojinha()
						}				
						senao
						{
							escreva("Você não possui a quantidade indicada.\n")
							lojinha()
						}
					}
					senao
					{
						escreva("Você não tem nenhum Neodimio no inventario.\n")
						lojinha()
					}			
				caso 2:
					se(Dy > 0)
					{
						escreva("Quanto Disprosio deseja vender?\n")
						leia(quantescolha)
						se(Dy <= quantescolha)
						{
							Dy = Dy - quantescolha
							creditos = creditos + (quantescolha * 200)
							escreva(quantescolha + "Disprosio(s) vendido(s).\n")
							lojinha()
						}				
						senao
						{
							escreva("Você não possui a quantidade indicada.\n")
							lojinha()
						}
					}
					senao
					{
						escreva("Você não tem nenhum Disprosio no inventario.\n")
						lojinha()
					}		
				caso 3:
					se(Y > 0)
					{
						escreva("Quanto Itrio deseja vender?\n")
						leia(quantescolha)
						se(Y <= quantescolha)
						{
							Y = Y - quantescolha
							creditos = creditos + (quantescolha * 300)
							escreva(quantescolha + "Itrio(s) vendido(s).\n")
							lojinha()
						}				
						senao
						{
							escreva("Você não possui a quantidade indicada.\n")
							lojinha()
						}
					}
					senao
					{
						escreva("Você não tem nenhum Itrio no inventario.\n")
						lojinha()
					}								
			}
		}
		se(compravenda =='c')
		{
			inteiro compraescolha
			
			//-----------------------------LOJA1------------------------------------------------------				
			se(tipoloja == 1 ou tipoloja == 6)
			{
				escreva("Creditos: " + creditos + "\n")
				escreva("1{H}--2{Fe}--3{C}--4{O}")
				leia(compraescolha)
				escreva("Quanto deseja comprar?")
				leia(quantcompra)				
				escolha(compraescolha)
				{
					caso 1:
						se(creditos >= quantcompra * 50)
						{
							H = H + (1 * quantcompra)
							creditos = creditos - (50 * quantcompra)
							escreva("Você comprou uma unidade de Hidrogenio.\n")
						}
						senao
						{
							escreva("Você não possui creditos suficientes.\n")
						}
						lojinha()
						pare
					caso 2:
						se(creditos >= quantcompra * 50)
						{
							Fe = Fe + (1 * quantcompra)
							creditos = creditos - (50 * quantcompra)
							escreva("Você comprou uma unidade de Ferro.\n")							
						}
						senao
						{
							escreva("Você não possui creditos suficientes.\n")							
						}
						lojinha()
						pare
					caso 3:
						se(creditos >= quantcompra * 50)
						{
							C = C + (1 * quantcompra)
							creditos = creditos - (50 * quantcompra)
							escreva("Você comprou uma unidade de Carbono.\n")							
						}
						senao
						{
							escreva("Você não possui creditos suficientes.\n")							
						}
						lojinha()
						pare
					caso 4:
						se(creditos >= quantcompra * 50)
						{
							O = O + (1 * quantcompra)
							creditos = creditos - (50 * quantcompra)
							escreva("Você comprou uma unidade de Oxigenio.\n")							
						}
						senao
						{
							escreva("Você não possui creditos suficientes.\n")							
						}	
						lojinha()					
						pare
					caso contrario:
						escreva("Opcao invalida.\n")
						lojinha()
						pare	
				}
				
			}
			//-----------------------------LOJA2----------------------------------------------------	
			se(tipoloja == 2 ou tipoloja == 4)
			{
				escreva("Creditos: " + creditos + "\n")
				escreva("|1{H}--2{He}--3{Fe}--4{Al}--5{C}--6{N}--7{O}--|\n")
				escreva("|Melhorias: 8[Casco1]--9[Motor1]--10[Sonda1]--11[SistemasVitais1]|\n")
				leia(compraescolha)
				escreva("Quanto deseja comprar?")
				leia(quantcompra)			
				escolha(compraescolha)
				{
					caso 1:
						se(creditos >= quantcompra * 50)
						{
							H = H + (1 * quantcompra)
							creditos = creditos - (50 * quantcompra)
							escreva("Você comprou uma unidade de Hidrogenio.\n")							
						}
						senao
						{
							escreva("Você não possui creditos suficientes.\n")							
						}
						lojinha()
						pare
					caso 2:
						se(creditos >= quantcompra * 80)
						{
							He = He + (1 * quantcompra)
							creditos = creditos - (80 * quantcompra)
							escreva("Você comprou uma unidade de Helio.\n")							
						}
						senao
						{
							escreva("Você não possui creditos suficientes.\n")							
						}
						lojinha()
						pare
					caso 3:
						se(creditos >= quantcompra * 50)
						{
							Fe = Fe + (1 * quantcompra)
							creditos = creditos - (50 * quantcompra)
							escreva("Você comprou uma unidade de Ferro.\n")							
						}
						senao
						{
							escreva("Você não possui creditos suficientes.\n")							
						}
						lojinha()
						pare
					caso 4:
						se(creditos >= quantcompra * 80)
						{
							Al = Al + (1 * quantcompra)
							creditos = creditos - (80 * quantcompra)
							escreva("Você comprou uma unidade de Aluminio.\n")							
						}
						senao
						{
							escreva("Você não possui creditos suficientes.\n")							
						}
						lojinha()
						pare
					caso 5:
						se(creditos >= quantcompra * 50)
						{
							C = C + (1 * quantcompra)
							creditos = creditos - (50 * quantcompra)
							escreva("Você comprou uma unidade de Carbono.\n")							
						}
						senao
						{
							escreva("Você não possui creditos suficientes.\n")							
						}
						lojinha()
						pare
					caso 6:
						se(creditos >= quantcompra * 80)
						{
							N = N + (1 * quantcompra)
							creditos = creditos - (80 * quantcompra)
							escreva("Você comprou uma unidade de Nitrogenio.\n")							
						}
						senao
						{
							escreva("Você não possui creditos suficientes.\n")							
						}
						lojinha()
						pare
					caso 7:
						se(creditos >= quantcompra * 50)
						{
							O = O + (1 * quantcompra)
							creditos = creditos - (50 * quantcompra)
							escreva("Você comprou uma unidade de Oxigenio.\n")							
						}
						senao
						{
							escreva("Você não possui creditos suficientes.\n")							
						}
						lojinha()
						pare	
					caso 8:					
						se(cascoup == 0 e creditos >= 100)
						{
							escreva("Voce aprimorou seu casco.\n")
							cascoup = cascoup + 1
							creditos = creditos - 100
						}
						senao
						{
							escreva("Você já possui esta melhoria.\n")
						}
						lojinha()
						pare
					caso 9:
						se(motorup == 0 e creditos >= 100)
						{
							escreva("Voce aprimorou seu motor.\n")
							motorup = motorup + 1
							creditos = creditos - 100
						}
						senao
						{
							escreva("Você já possui esta melhoria.\n")
						}
						lojinha()
						pare
					caso 10:
						se(sondaup == 0 e creditos >= 100)
						{
							escreva("Voce aprimorou sua sonda planetária.\n")
							sondaup = sondaup + 1
							creditos = creditos - 100
						}
						senao
						{
							escreva("Você já possui esta melhoria.\n")
						}
						lojinha()
						pare
					caso 11:
						se(sisvitup == 0 e creditos >= 100)
						{
							escreva("Voce aprimorou seus sistemas vitais.\n")
							sisvitup = sisvitup + 1
							creditos = creditos - 100
						}
						senao
						{
							escreva("Você já possui esta melhoria.\n")
						}
						lojinha()
						pare
				}
			}
			//-----------------------------LOJA3---------------------------------------------------------------		
			se(tipoloja == 3)
			{ 
				escreva("Creditos: " + creditos + "\n")
				escreva("| 1{H}--2{He}--3{H3}--4{Li}--5{C}--6{N}--7{O}--8{Fe}--9{Al}--10{Ti}   |\n")
				escreva("| Melhorias: 11[Casco1]--12[Motor1]--13[Sonda1]--14[SistemasVitais1]  |\n")
				escreva("| Melhorias2: 15[Casco2]--16[Motor2]--17[Sonda2]--18[SistemasVitais2] |\n")
				leia(compraescolha)
				escreva("Quanto deseja comprar?")
				leia(quantcompra)			
				escolha(compraescolha)
				{
					caso 1:
						se(creditos >= quantcompra * 50)
						{
							H = H + (1 * quantcompra)
							creditos = creditos - (50 * quantcompra)
							escreva("Você comprou uma unidade de Hidrogenio.\n")
						}
						senao
						{
							escreva("Você não possui creditos suficientes.\n")
						}
						lojinha()
						pare
					caso 2:
						se(creditos >= quantcompra * 80)
						{
							He = He + (1 * quantcompra)
							creditos = creditos - (80 * quantcompra)
							escreva("Você comprou uma unidade de Helio.\n")
						}
						senao
						{
							escreva("Você já possui esta melhoria.\n")
						}
						lojinha()
						pare
					caso 3:
						se(creditos >= quantcompra * 150)
						{
							H3 = H3 + (1 * quantcompra)
							creditos = creditos - (150 * quantcompra)
							escreva("Você comprou uma unidade de Tritio.\n")
						}
						senao
						{
							escreva("Você já possui esta melhoria.\n")
						}
						lojinha()
						pare
					caso 4:
						se(creditos >= quantcompra * 300)
						{
							Li = Li + (1 * quantcompra)
							creditos = creditos - 300
							escreva("Você comprou uma unidade de Litio.\n")
						}
						senao
						{
							escreva("Você já possui esta melhoria.\n")
						}
						lojinha()
						pare
					caso 5:
						se(creditos >= quantcompra * 50)
						{
							C = C + (1 * quantcompra)
							creditos = creditos - (50 * quantcompra)
							escreva("Você comprou uma unidade de Carbono.\n")
						}
						senao
						{
							escreva("Você já possui esta melhoria.\n")
						}
						lojinha()
						pare
					caso 6:
						se(creditos >= quantcompra * 80)
						{
							N = N + (1 * quantcompra)
							creditos = creditos - (80 * quantcompra)
							escreva("Você comprou uma unidade de Nitrogenio.\n")
						}
						senao
						{
							escreva("Você já possui esta melhoria.\n")
						}
						lojinha()
						pare
					caso 7:
						se(creditos >= quantcompra * 50)
						{
							O = O + (1 * quantcompra)
							creditos = creditos - (50 * quantcompra)
							escreva("Você comprou uma unidade de Oxigenio.\n")
						}
						senao
						{
							escreva("Você já possui esta melhoria.\n")
						}
						lojinha()
						pare
					caso 8:
						se(creditos >= quantcompra * 50)
						{
							Fe = Fe + (1 * quantcompra)
							creditos = creditos - (50 * quantcompra)
							escreva("Você comprou uma unidade de Ferro.\n")
						}
						senao
						{
							escreva("Você já possui esta melhoria.\n")
						}	
						lojinha()
						pare
					caso 9:
						se(creditos >= quantcompra * 80)
						{
							Al = Al + (1 * quantcompra)
							creditos = creditos - (80 * quantcompra)
							escreva("Você comprou uma unidade de Aluminio.\n")
						}
						senao
						{
							escreva("Você já possui esta melhoria.\n")
						}
						lojinha()
						pare
					caso 10:
						se(creditos >= quantcompra * 150)
						{
							Ti = Ti + (1 * quantcompra)
							creditos = creditos - (150 * quantcompra)
							escreva("Você comprou uma unidade de Titanio.\n")
						}
						senao
						{
							escreva("Você já possui esta melhoria.\n")
						}
						lojinha()
						pare							
					caso 11:
						se(cascoup == 0 e creditos >= 100)
						{
							escreva("Voce aprimorou seu casco.\n")
							cascoup = cascoup + 1
							creditos = creditos - 100
						}
						senao
						{
							escreva("Você já possui esta melhoria.\n")
						}
						lojinha()
						pare
					caso 12:
						se(motorup == 0 e creditos >= 100)
						{
							escreva("Voce aprimorou seu motor.\n")
							motorup = motorup + 1
							creditos = creditos - 100
						}
						senao
						{
							escreva("Você já possui esta melhoria.\n")
						}
						lojinha()
						pare
					caso 13:
						se(sondaup == 0 e creditos >= 100)
						{
							escreva("Voce aprimorou sua sonda planetária.\n")
							sondaup = sondaup + 1
							creditos = creditos - 100
						}
						senao
						{
							escreva("Você já possui esta melhoria.\n")
						}
						lojinha()
						pare
					caso 14:
						se(sisvitup == 0 e creditos >= 100)
						{
							escreva("Voce aprimorou seus sistemas vitais.\n")
							sisvitup = sisvitup + 1
							creditos = creditos - 100
						}
						senao
						{
							escreva("Você já possui esta melhoria.\n")
						}
						lojinha()
						pare
					caso 15:
						se(cascoup == 1 e creditos >= 200)
						{
							escreva("Voce aprimorou seu casco para o nivel maximo.\n")
							cascoup = cascoup + 1
							creditos = creditos - 200
						}
						se(cascoup == 0)
						{
							escreva("Você precisa comprar e instalar o primeiro nivel.\n")
						}
						senao
						{
							escreva("Você já possui esta melhoria.\n")
						}
						lojinha()
						pare
					caso 16:
						se(motorup == 1 e creditos >= 200)
						{
							escreva("Voce aprimorou seu motor para o nivel maximo.\n")
							motorup = motorup + 1
							creditos = creditos - 200
						}
						se(motorup == 0)
						{
							escreva("Você precisa comprar e instalar o primeiro nivel.\n")
						}
						senao
						{
							escreva("Você já possui esta melhoria.\n")
						}
						lojinha()
						pare
					caso 17:
						se(sondaup == 1 e creditos >= 200)
						{
							escreva("Voce aprimorou sua sonda para o nivel maximo.\n")
							sondaup = sondaup + 1
							creditos = creditos - 200
						}
						se(sondaup == 0)
						{
							escreva("Você precisa comprar e instalar o primeiro nivel.\n")
						}
						senao
						{
							escreva("Você já possui esta melhoria.\n")
						}
						lojinha()
						pare
					caso 18:
						se(sisvitup == 1 e creditos >= 200)
						{
							escreva("Voce aprimorou seus sistemas vitais para o nivel maximo.\n")
							sisvitup = sisvitup + 1
							creditos = creditos - 200
						}
						se(sisvitup == 0)
						{
							escreva("Você precisa comprar e instalar o primeiro nivel.\n")
						}
						senao
						{
							escreva("Você já possui esta melhoria.\n")
						}
						lojinha()
						pare
				}
			}
		}
	}



//----------------------------------SORTEIO LOJA---------------------------------------	
	funcao sortloja()
	{
		inteiro sorteioloja
		sorteioloja = u.sorteia(1, 10)
		se(sorteioloja == 1)
		{
			loja = 1
			tipoloja = u.sorteia(1, 6)
		}
	}

	
	
//----------------------------------INICIO---------------------------------------		
	funcao inicio()
	{
		sortearsistema()
		conferencia()
		placar()
		
		se(planetaatual != "")
		{
			escreva("Voce esta em um sistema com uma estrela: ")
			exibirestrela()
			escreva(" e esta na orbita de um planeta: " + planetaatual + "\n")
		}
		senao
		{
			escreva("Voce esta em um sistema com uma estrela: ")
			exibirestrela()
			escreva("\n")
		}
		
		
		escreva("1- Explorar planeta   2- Trocar de sistema   3- Reabastecer   4- Mostrar planetas no sistema   5- Ajuda   6- Inventario")
		se(loja == 1)
		{
			escreva("   7- Loja")
		}
		escreva("   9- Sair")
		escreva("\n")
		leia(opcao)		
		
		faca
		{			
			escolha(opcao)
			{
				caso 1:
					orbitar()
					inicio()
					pare
				caso 2:
					trocarsistema()
					sortearsistema()
					inicio()
					pare
				caso 3:
					reabastecer()
					inicio()
					pare
				caso 4:
					exibirsistema()
					inicio()
					pare
				caso 5:
					ajuda()
					inicio()
					pare
				caso 6:
					inventario()
					inicio()
					pare
				caso 7:
					se(loja == 1)
					{
						lojinha()	
					}
					inicio()
					pare
				caso 9:
					sair()
					pare	
				caso contrario:
					escreva("Opcao invalida.\n")
					pare			
				
			}
		}enquanto(opcao < 9 e 9 < opcao)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 67070; 
 * @DOBRAMENTO-CODIGO = [14, 114, 159, 484, 508, 535, 572, 729, 840, 1253, 1292, 1618, 1714, 1780, 1970, 2013, 2070, 2162, 2231, 2820];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {artvit, 8, 92, 6}-{placarartefatos, 11, 37, 15};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */