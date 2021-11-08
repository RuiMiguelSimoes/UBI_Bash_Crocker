echo
awk -F: '{print $3}' carrosStock.txt

printf "\nInsira a matricula do automóvel que quer vender: "
read donaldDuck

#basicamente, isto pega na linha que tem o num de matricula (que é unica) passa para um ficheiro de carros vendidos... FIXE
#dps disso o programa diz "AHAH LOL" e ele pega em todas as linhas menos a linha do programa e cospe as para um fichiero temporario
#e dps troca a informaçao do ficheiro temp para o ficheiro original de stock assinalando q o carro foi carro foi vendido
grep $donaldDuck carrosStock.txt > carrosVendidos.txt
grep -v $donaldDuck carrosStock.txt > temp.txt
mv temp.txt carrosStock.txt
