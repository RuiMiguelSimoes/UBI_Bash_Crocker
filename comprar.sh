printf "\nComprar Automóveis: \n"

echo -n "Insira a marca do automóvel (Ex: Renault, VolksWagen, BMW) : "
read marcaAutComp

echo -n "Insira o modelo do automóvel (Ex: Clio, Golf, 320d) : "
read modeloAutComp

echo -n "Insira a matrícula do automóvel (Ex: 22FG02) : "
read matriculaAutComp

echo -n "Insira a o ano de fabrico (Ex: 1999) : "
read anoFrabrico

echo -n "Insira o preço de compra do automóvel (Ex: 5000)"
read preco

echo -n "Insira a data de compra (Ex: 1999 12 23)"
read dataCompra

echo -n "Insira o custo de restauto (Ex 2499)"
read custoRestauro

echo -n "Insira a valorização do automóvel restaurado (Ex 15000) "
read valor

echo $marcaAutComp : $modeloAutComp : $matriculaAutComp : $anoFrabrico : $preco : $dataCompra : $custoRestauro : $valor >> carrosComprados.txt 
