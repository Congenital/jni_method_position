value=$(expr $1 / 4 - 3)
cat method.txt | grep "(" | sed -n "$value,$value p"
