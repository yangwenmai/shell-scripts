IN="bla@some.com;john@home.com;ok@f.com"
IFS=';'
read -a IN_arr <<< "${IN}"
for entry in "${IN_arr[@]}"
do
    echo $entry
done

