printf "1 - Comprar \n2 - Vender \n3 - Alterar preço de restauro \n4 - Alterar dados \n5 - Visualizar automóveis \n6 - Gestão de Base de Dados \n7 - Relatórios \n\n0 - Sair do programa\n\nIntroduza a opção> "
read userInput

#Ciclo para verificar de o input do utilizador é válido
while [[ $userInput<0 || $userInput>7 ]]
do
    echo -n "Numero inserido inválido! Insira novo numero: " 
    read userInput
done

#case verifica qual é a input 0-7
case $userInput in

    1)  printf "Escolheu a opção: 1\n"
    ./comprar.sh
    ;;
    2)  printf "Escolheu a opção: 2\n"
    ./Vender.sh
    ;;

    3)  printf "Escolheu a opção: 3\n"

    ;;

    4)  printf "Escolheu a opção: 4\n"
    ;;
    
    5)  printf "Escolheu a opção: 5\n"
    ./teste.sh
    ;;

    6)  printf "Escolheu a opção: 6\n"
    ./teste.sh
    ;;

    7)  printf "Escolheu a opção: 7\n"
    ./teste.sh
    ;;

    0) printf "Programa Terminado\n"
   
   ;;
    #Caso o input seja aceite pelo ciclo while mas não pelo comando case
    *) echo "   O numero inserido é inválido! Programa a terminar..."
   ;;
esac