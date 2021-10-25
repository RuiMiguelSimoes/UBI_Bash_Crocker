echo -n "Insira a matrícula do automóvel (Ex: 22FG02) : "
read matriculaAutComp

for k in $(cut -d : -f 3 carrosComprados.txt) 
do
    echo $k
    if ["$k" = "$matriculaAutComp"]
    then
        echo cenas
    fi
done

#novo código aqui