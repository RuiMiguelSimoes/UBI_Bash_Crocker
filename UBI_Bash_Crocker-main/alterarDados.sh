cat carrosStock.txt
printf "Insira a matricula do carro que quer alterar: "
read input

./comprar2.sh
grep -v "$input" carrosStock.txt >> temp.txt
mv temp.txt carrosStock.txt
