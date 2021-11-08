echo
cat carrosStock.txt

printf "\nInsira a matricula do automóvel cujo custo de restauro quer alterar: "
read mickeyMouse
printf "\nInsira o novo preço de restauro: "
read safado

#yo, sup malta. bem isto funciona assim. ele pega na string que quer alterar, manda para o rapido, dps
#ele altera a string e manda para o temp, dps adiciona-se ao tempo os dados extra do ficheiro original (carrosStock)
#(tudo menos a string alterada), e passa se essa bolha de informaçao para o ficheiro do stock.
#existe uma maneira de fazer isto mais rápidamente? ya... mas vai te lixar, sao 3 e 30 da manha, tou c sono
#e isto funciona, ent n te queixes. va... vou nanar. never gonna give you up... never gonna let you down.
#VA XAUUUUUUUUUUUUuuuu
grep $mickeyMouse carrosStock.txt > rapido.txt
awk -F: -v var="$safado" '{print $1":"$2":"$3":"$4":"$5":"$6":",var" :"$8}' rapido.txt > temp.txt
grep -v $mickeyMouse carrosStock.txt >> temp.txt
rm rapido.txt
mv temp.txt carrosStock.txt