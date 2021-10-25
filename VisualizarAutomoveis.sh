#menu Comum para comprar.sh e vender.sh
printf "\n1 - Matrícula \n2 - Marca \n3 - Modelo \n4 - Ano \n5 - Tipo \n\n0 -  Voltar para o menu principal "
read userInput

case $userInput in 

1) printf "Escolheu a opção: 1\n"

;;

2) printf "Escolheu a opção: 2\n"

;;

3) printf "Escolheu a opção 3\n"

;;

4) printf "Escolheu a opção 4\n"

;;

5) printf "Escolheu a opção 5\n"

;;

0) printf "Escolheo a opção 0\n\n\n"
    ./MainMenu.sh
;;
esac

