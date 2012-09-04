#!/bin/sh

# autor: gutocarvalho (guto@gutocarvalho.net)
# data de criacao: 2008-05-28
# baseado nos scripts do queuegraph

# uso: ./contafilas

# variaveis

while true;do
	  clear
	  qdir=`/usr/sbin/postconf -h queue_directory` 	   
	  incoming=`/usr/bin/find $qdir/incoming -type f -print | wc -l | awk '{print $1}'`
	  maildrop=`/usr/bin/find $qdir/maildrop -type f -print | wc -l | awk '{print $1}'`
	  active=`/usr/bin/find $qdir/active -type f -print | wc -l | awk '{print $1}'`
	  deferred=`/usr/bin/find $qdir/deferred -type f -print | wc -l | awk '{print $1}'`
	  hold=`/usr/bin/find $qdir/hold -type f -print | wc -l | awk '{print $1}'`
	  corrupt=`/usr/bin/find $qdir/corrupt -type f -print | wc -l | awk '{print $1}'`
	   
	  # imprimindo informacoes
	   
	  echo "Contandor de filas Postfix por Guto Carvalho <gutocarvalho@gmailcom>"
	  echo -e "\nE-mails chegando (incoming queue): $incoming"
	  echo "E-mails sendo processados (maildrop): $maildrop"
	  echo "E-mails na fila para entrega (active queue): $active"
	  echo "E-mails que nao foram entregues (deferred queue): $deferred"
	  echo -e "E-mails com problemas (corrupt queue): $corrupt\n"
	  sleep 1
done
