echo 
echo 1- Backup - Criar uma cópia de segurança
echo 2- Restaurar uma cópia de segurança
echo 3- Apagar uma cópia de segurança 
echo 
echo 0- Sair para o menu principal
echo
echo -n "-> "
read userInput

case $userInput in

    1) 
    backupDate=$(date +%d-%m-%y)
    file_name="Backup_${backupDate}.txt"
    
    echo "Carros Comprados:" > $file_name
    carrosComprados.txt >> $file_name

    printf "\nCarros Vendidos: " >> $file_name
    carrosVendidos.txt >> $file_name

    printf "\nCarros em Stock: "
        
    carrosStock.txt >> $file_name

    printf "\nTarefa Terminada..."

    .estaoDB.sh
    ;;
    2) 



    ;;

    3)

    ;;

    0)./MainMenu.sh
    ;;
esac