#!/bin/bash

echo O primeiro parametro informado foi $1

echo O quadrodo de $1 é $[$1*$1]

echo O segundo parametro foi $2

echo O cubo de $2 é $[$2*$2*$2]

echo Foram informados $# parametros para o script $0

i=1 #esse é um contador iniciado em 1
while [ -n "$1" ] #enquanto a variavel $1 não for vazia
do
	echo O parametro $i informado foi: $1
	i=$[ $i+1 ] #essa linha incrementa meu contador
	shift #o shift vai eliminando os parametros até que chegue na condição
done

