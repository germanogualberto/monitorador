Monitorador de uso de CPU. Projeto desenvolvido para a cada de Administração de Sistemas do curso de Ciencia da Computação da UFCG no período 2018.2

Projeto responsavel por capturar e salvar o nome e tempo de execução de cada comando executado por um usuário no bash.

Alem disso o projeto gera relatorios a partir dos logs capturados.

1) quanto tempo de CPU, medidos em segundos, (divididos em sys e user) o usuário consumiu durante um mês; 
2) um histograma da utilização de comandos pelo usuário (ou seja, quantas vezes cada comando foi usado em um mês).

Usage:

-install:

sudo install.sh

-uninstall:

sudo uninstall.sh

-uso

A aplicação funciona sem apresentar mudanças para o usuário

--rel
Caso seja executado o comando rel, os relatórios são apresentados
