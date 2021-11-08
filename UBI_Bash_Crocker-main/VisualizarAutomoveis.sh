#menu Comum para comprar.sh e vender.sh
printf "\n1 - Matrícula \n2 - Marca \n3 - Modelo \n4 - Ano \n5 - Tipo \n\n0 -  Voltar para o menu principal\nInsira opção: "
read userInput

case $userInput in

1) printf "Escolheu a opção: 1\n"
  awk -F: '{print $5}' carrosStock.txt
;;

2) printf "Escolheu a opção: 2\n"
  awk -F: '{print $1}' carrosStock.txt
;;

3) printf "Escolheu a opção 3\n"
  awk -F: '{print $2}' carrosStock.txt
;;

4) printf "Escolheu a opção 4\n"
  awk -F: '{print $4}' carrosStock.txt
;;

5) printf "Escolheu a opção 5\n"
  awk -F: '{print $5}' carrosStock.txt
;;

0) printf "Escolheu a opção 0\n\n\n"
    ./MainMenu.sh
;;
esac
