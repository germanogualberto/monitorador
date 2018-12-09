#instala aplicacao
#verificar se ja está instalado

OLD_NAME='/bin/old-bash'
NAME='/bin/bash'
NEW_NAME='/bin/new-bash.sh'
DIR='/bin/'

#renomear antigo

if [ ! -f $OLD_NAME ];
then
	echo "nao existe old-bash"
	#copia arquivos
#	copyFiles
	cp -R . $DIR
	#renomear antigo
	mv $NAME $OLD_NAME
	#renomear novo
	mv $NEW_NAME $NAME

else
	echo "instalação prévia do new-bash encontrada"
fi
