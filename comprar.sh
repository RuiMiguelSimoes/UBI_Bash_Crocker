#rotina para adicionar um carro comprado a um ficheiro
printf "\nComprar Automóveis: \n"

echo -n "Insira a marca do automóvel (Ex: Renault, VolksWagen, BMW) : "
read marcaAutComp

echo -n "Insira o modelo do automóvel (Ex: Clio, Golf, 320d) : "
read modeloAutComp

echo -n "Insira o tipo do automóvel (Ex: SUV, Vintage, Sedan) : "
read tipoAutomovel


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

echo -n "Insira o preço de compra do automóvel (Ex: 5000€) : "
read preco

#data de compra
dataCompra=$(date +%d-%m-%y)

echo -n "Insira o custo de restauto (Ex 2499€) : "
read custoRestauro

echo -n "Insira a valorização do automóvel restaurado (Ex 15000€) : "
read valor

#move os dados para um ficheiro temporário 
echo $marcaAutComp : $modeloAutComp : $tipoAutomovel : $matriculaAutComp : $anoFrabrico : $preco : $dataCompra : $custoRestauro : $valor >> carrosComprados.txt 



#move os dados para um ficheiro temporário 
echo $marcaAutComp : $modeloAutComp : $matriculaAutComp : $anoFrabrico : $preco : $dataCompra : $custoRestauro : $valor >> carrosStock.txt 



#o utilizador tem a opção de voltar ao menu principal ou terminal o programa
printf "\n\n1 - Menu principal\n2 - Terminar\n> "
read userInput


#verifica se o input do loop é válido
while [[ $userInput < 1 || $userInput >2 ]] 
do
    printf "\n\nValor inválido, insira um dos valores:\n1 - Menu principal\n2 - Terminar\n> "
    read userInput
done


#redireciona o utilizador para o menu principal ou termina o programa
case $userInput in

    1)  printf "Escolheu a opção: 1\n"
    ./MainMenu.sh
    ;;
    2)  printf "Escolheu a opção: 2\nPrograma Terminado..."
    exit 
    ;;
esac
