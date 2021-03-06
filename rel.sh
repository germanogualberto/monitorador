#!/bin/bash

#usage
# ./rel.sh nome_usuario

NOME_USER=$1
#1) quanto tempo de CPU (divididos em sys e user) o usuário consumiu durante um mês; 

echo "Tempo de CPU gasto por $NOME_USER"
echo "sys user"
cat commands.log | grep "$NOME_USER" | grep `date '+%b'`| awk '{ n=n+$7; m=m+$8} END{print n,m}'


#2) um histograma da utilização de comandos pelo usuário (ou seja, quantas vezes cada comando foi usado em um mês).
echo "--------------------"
echo "Comandos mais usados no ultimo mês:"
echo "Quantidade | Comando"
awk '{print $3}' commands.log | sort | uniq -c

