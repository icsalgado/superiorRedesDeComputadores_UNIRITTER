#!/bin/bash

#inserindo um pequeno menu
echo "|---Selecione uma opção---|"
echo "|1 para comparador        |"
echo "|2 para calculadora       |"
echo "|-------------------------|"

#lendo a oção do menu
read opcao

#função compara valores informados
comparaValores ()
{
	echo "|----------------------Comparador------------------------|"
	read -p "Digite um valor: " valor1
	read -p "Digite outro valor: " valor2

	if [ $valor1 -gt $valor2 ]
	then
		echo "$valor1 > $valor2"
	elif [ $valor1 -lt $valor2 ]
	then
		echo "$valor1 < $valor2"
	elif [ $valor1 -ge $valor2 ]
	then
		echo "$valor1 >= $valor2"
	elif [ $valor1 -le $valor2 ]
	then
		echo "$valor1 <= $valor2"
	fi
}

#função calcula como uma calculadora básica
calculadora ()
{
	echo "|----------------------Calculadora-----------------------|"
	read -p "Digite um valor: " valor1
	read -p "Digite outro valor: " valor2
	echo "Escolha a opreação aritmética:"
	echo "+ para soma; - subtração; . multiplicação; / divisao"
	read operacao
	case $operacao in
		+)
			soma=$(($valor1+$valor2))
			echo "O resultado da soma é: $soma";;
		-)
			subtracao=$(($valor1-$valor2))
			echo "O resultado da subtração é: $subtracao";;
		.)
			multiplicacao=$(($valor1*$valor2))
			echo "O resultado da multiplocação é: $multiplicacao";;
		/)
			divisao=$(($valor1/$valor2))
			echo "O resultado da divisão é: $divisao";;
		*)
			echo "Operação inválida";;
	esac
}

#menu de entrada papra as funções
case $opcao in
	1)
		echo "opção 1"
		comparaValores;;
	2)
		echo "opção 2"
		calculadora;;
	*)
		echo "Opção inválida";;
esac







