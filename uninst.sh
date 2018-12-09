#desinstala a aplicacao

#verificar se ja está instalado

OLD_NAME='/bin/old-bash'
NAME='/bin/bash'
NEW_NAME='/bin/new-bash.sh'
DIR='/bin/'

#renomear antigo

if [ -f $OLD_NAME ];
then
	echo "existe old-lp"
	#apaga arquivos
	rm -rf $DIR+'README.md'
	rm -rf $DIR+'inst.sh'
	rm -rf $DIR+'uninst.sh'
	rm -rf $DIR+'bash'
	echo "arquivos apagados"
	#renomear antigo
	mv $OLD_NAME $NAME

else
	echo "instalação prévia do new-bash nao encontrada"
fi
