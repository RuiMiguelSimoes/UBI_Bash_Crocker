echo

echo "Marca : Modelo : Matrícula : Ano fabrico : : DAta de Compra : Preço de restauro : Preço"

cat carrosStock.txt

printf "\nInsira a matricula do automóvel que quer vender: "
read inputMatricula

#basicamente, isto pega na linha que tem o num de matricula (que é unica) passa para um ficheiro de carros vendidos... FIXE
#dps disso o programa diz "AHAH LOL" e ele pega em todas as linhas menos a linha do programa e cospe as para um fichiero temporario
#e dps troca a informaçao do ficheiro temp para o ficheiro original de stock assinalando q o carro foi carro foi vendidoJM

grep $inputMatricula carrosStock.txt > carrosVendidos.txt
grep -v $inputMatricula carrosStock.txt > temp.txt
mv temp.txt carrosStock.txt


#o utilizador tem a opção de voltar ao menu principal ou terminal o programa
printf "\n\n1 - Menu principal\n2 - Terminar"
read userInput

if [[$userInput<1 || $userInput>2]]
then
    printf "\n\nLamentamos, valor inválido!\n1 - Menu principal\n2 - Terminar"
read userInput
fi

case $userInput in 

    1)./MainMenu.sh

    2) exit

esac
