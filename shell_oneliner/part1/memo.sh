k1=クロロエチルエチルエーテル
k2=クロロメチルメチルエーテル
k3=クロロエチルエーテル
k4=クロロメチルエチルエーテル

echo $k1 | sed 's/エ/メ/'

echo $k1 | sed 's/エチルエ/メチルエ/' # クロロエチルメチルエーテル

echo $k2 | sed 's/メチル/エチル/g'

echo $k3 | sed 's/エチル/エチルエチル/g'
echo $k3 | sed 's/エチル/&&/g' # 別解

echo $k4 | sed -E 's/(メチル)(エチル)/\2\1/'
echo $k4 | sed -E 's/(メ..)(...)/\2\1/' # 別解