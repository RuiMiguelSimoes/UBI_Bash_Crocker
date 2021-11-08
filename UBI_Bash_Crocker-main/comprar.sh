#rotina para adicionar um carro comprado a um ficheiro
source varGlobal.sh
printf "\nComprar Automóveis: \n"

echo -n "Insira a marca do automóvel (Ex: Renault, VolksWagen, BMW) : "
read marcaAutComp

echo -n "Insira o modelo do automóvel (Ex: Clio, Golf, 320d) : "
read modeloAutComp

echo -n "Insira a matrícula do automóvel (Ex: 22FG02) : "
read matriculaAutComp

#ciclo que verifica se a matricula se encontra da BD
for i in $(cat carrosComprados.txt | cut -d : -f 3)
do
    while [ "$i" == "$matriculaAutComp" ]
        do
        echo -n "Esta matricula já se encontra na base de dados, insira uma matrícula válida: "
        read matriculaAutComp
    done
done

echo -n "Insira a o ano de fabrico (Ex: 1999) : "
read anoFrabrico

echo -n "Insira o preço de compra do automóvel (Ex: 5000€)"
read preco

#data de compra
dataCompra=$(date +%d-%m-%y)

echo -n "Insira o custo de restauro (Ex 2499€)"
read custoRestauro

echo -n "Insira a valorização do automóvel restaurado (Ex 15000€) "
read valor


#tipo, a cena c o programa antigo, é q ele tava a fazer um ficheiro temporario e dps a colar esse ficheiro, para um documento
#isso tinha 2 problemas: 1- é uma linha a mais de codigo, o q é desnecessario. 2- Ao fazer isso por esse método,
#o ficheiro em vez de adicionar conteudo, ele substituia, e assim n dá, ent agr funciona melhor pelo menos.
echo $marcaAutComp : $modeloAutComp : $matriculaAutComp : $anoFrabrico : $preco : $dataCompra : $custoRestauro : $valor >> carrosComprados.txt



echo $marcaAutComp : $modeloAutComp : $matriculaAutComp : $anoFrabrico : $preco : $dataCompra : $custoRestauro : $valor >> carrosStock.txt


printf "\n\n1 - Menu principal\n2 - Terminar\nInsira número: "
read userInput

#isto faz cenas... jk www, isto na verdade escolho 1 de 2 casos possíveis e termina o porgrama ou reinicia,
#oh, btw, alguem tem de fazer ali em cima um loop q caso n seja o numero 1 ou 2 ele peça um num novo.
#pq eu tentei fazer isso por 30 min e n consegui ent desisto. CARLOS SENPAI, HELP MEEEE. ou... rui. Acho eu.
case $userInput in
  1)
    printf "\n\n"
    ./MainMenu.sh
    ;;

  2)
    exit
    ;;

esac
