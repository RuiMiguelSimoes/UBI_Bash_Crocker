echo -n "Insira a  marca do automóvel (Ex: Renault, VolksWagen, BMW) : "
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

echo -n "Insira o custo de restauto (Ex 2499€)"
read custoRestauro

echo -n "Insira a valorização do automóvel restaurado (Ex 15000€) "
read valor


#tipo, a cena c o programa antigo, é q ele tava a fazer um ficheiro temporario e dps a colar esse ficheiro, para um documento
#isso tinha 2 problemas: 1- é uma linha a mais de codigo, o q é desnecessario. 2- Ao fazer isso por esse método,
#o ficheiro em vez de adicionar conteudo, ele substituia, e assim n dá, ent agr funciona melhor pelo menos.
echo $marcaAutComp : $modeloAutComp : $matriculaAutComp : $anoFrabrico : $preco : $dataCompra : $custoRestauro : $valor > temp.txt
