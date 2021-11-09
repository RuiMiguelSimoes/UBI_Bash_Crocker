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
