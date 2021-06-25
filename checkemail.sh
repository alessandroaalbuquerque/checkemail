#Desenvolvido por Alessandro Albuquerque - Interop
#!/bin/bash

 

# Parâmetros CURL para consulta IMAP
CURL="/usr/bin/curl --silent --ssl --url imaps://SERVER:993/INBOX --user USER:PASS --request"

 

# Buscar mensagens na caixa de entrada conforme filtro
FILTER=`$CURL 'SEARCH UNSEEN' | sed 's/[^0-9]/ /g' | sed 's/^[ \t]*//;s/[ \t]*$//'`

 
# Filtrar apenas quantidade[número] de emails
RESULTADO=`echo "$FILTER" | tr " " "\n" | wc -l`

 

echo $RESULTADO
