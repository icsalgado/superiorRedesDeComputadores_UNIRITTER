#!/bin/bash
#Usando a calculadora BC para ponto flutuante

variavel1=5
variavel2=5
variavel3=$[$variavel1+$variavel2]
variavel4=$[4+4]

echo Var1 = $variavel1
echo Var2 = $variavel2
echo Var1 + Var2 = $variavel3
echo 4 + 4 = $variavel4

echo O resultado de $variavel3 / $variavel4 é $[$variavel3/$variavel4] usando a operações no bash
echo "O resultado de $variavel3 / $variavel4 é `echo "scale=2; $variavel3/$variavel4" | bc` usando a calculadora BC"

