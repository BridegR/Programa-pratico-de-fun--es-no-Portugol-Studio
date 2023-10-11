programa
{
	inclua biblioteca Util --> ut
	inclua biblioteca Texto --> txt
	funcao inicio()
	{
		
		caracter simbolo_linha
		cadeia texto
		inteiro verif_Minusculo, verif_Maiusculo, verif_tamanho

		escreva("\n\t=VALIDAÇÃO DE SENHA=\t\n")

		escreva("Digite o caracter q gostaria q fosse alinha:\n")
		leia(simbolo_linha)


		faca
		{
			escreva_Linha(simbolo_linha)
			escreva("\nDigite sua senha de login: \n")
			leia(texto)
	
			escreva_Linha(simbolo_linha)
			verif_tamanho = tamanho_senha(texto)
			
			se(verif_tamanho >= 8)
			{
				escreva("\nContem qauntidade de caracteres aceitavel\n")
			}
			senao se(verif_tamanho < 8)
			{
				escreva("\nNão contem quantidade de caracteres aceitaveis\n\tFACA NOVAMENTE\t\n")
			}
		
	
			escreva_Linha(simbolo_linha)
			verif_Maiusculo = maisculo(texto)
			
			se(verif_Maiusculo > 0)
			{
				escreva("\nTem letras maiuscula\n")
			}
			senao
			{
				escreva("\nnao tem letra maiuscula\n\tFACA NOVAMENTE\t\n")
			}
			
	
			escreva_Linha(simbolo_linha)
			verif_Minusculo = minusculo(texto)
			se(verif_Minusculo > 0)
			{
				escreva("\nTem letras minusculas\n")		
			}
			senao
			{
				escreva("\nNao tem letras minusculas\n\tFACA NOVAMENTE\t\n")
				
			}
			escreva_Linha(simbolo_linha)
			escreva("\n")

			
		}enquanto(nao((verif_tamanho >= 8) e (verif_Minusculo > 0) e (verif_Maiusculo > 0)))
		
	}
	funcao inteiro tamanho_senha(cadeia valor)
	{
		
		inteiro num_tamanho = txt.numero_caracteres(valor)
		retorne num_tamanho
	}
	funcao inteiro maisculo(cadeia valor)
	{

		caracter letras_mai[] = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 
		'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U',
		'V', 'W', 'X', 'Y', 'Z'}
		caracter letras
		inteiro tamanho_caracter = txt.numero_caracteres(valor)
		inteiro tamanho_vetor = ut.numero_elementos(letras_mai)
		inteiro verif = 0

		para(inteiro i = 0; i < tamanho_caracter; i++)
		{
			
			letras = txt.obter_caracter(valor, i)

			para (inteiro cont = 0; cont < tamanho_vetor; cont++)
			{
			
				se (letras == letras_mai[cont])
				{
					verif = verif + 1
				}
			}	
		}

		retorne verif
	}
	funcao inteiro minusculo(cadeia valor)
	{

			caracter letras_minu[] = {'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 
			'j', 'k', 'l', 'm', 'n','o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'}
			caracter letras
			inteiro tamanho_caracter = txt.numero_caracteres(valor)
			inteiro tamanho_vetor = ut.numero_elementos(letras_minu)
			inteiro verif = 0

			para(inteiro i = 0; i < tamanho_caracter; i++)
			{
				letras = txt.obter_caracter(valor, i)

				para (inteiro cont = 0; cont < tamanho_vetor; cont++)
				{
					se (letras == letras_minu[cont])
					{
						verif = verif + 1
					}
				}
			}

			retorne verif
	}
	funcao escreva_Linha(caracter valor)
	{
		para(inteiro i = 1; i <= 30; i++)
		{
			escreva(valor)
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 241; 
 * @DOBRAMENTO-CODIGO = [67, 73, 101, 126];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */