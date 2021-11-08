
echo "Marca : Modelo : Matrícula : Tipo : Data de fabrico : Preço de compra : Data de compra : Custo de restauro e valorização : Preço de venda "
echo
cat carrosStock.txt
echo

printf "Insira a matricula do carro que quer alterar: "
read input

./alterarDadosCarro.sh

grep -v "$input" carrosStock.txt >> temp.txt
mv temp.txt carrosStock.txt
