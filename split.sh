IN="bla@some.com,john@home.com"
declare -a a="(${IN/,/ })";
for i in ${a[*]}; do echo $i; done

