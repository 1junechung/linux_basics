#### bash scripting

# input 
$1 # first argument
$2 # second argument 
$0 # name of script 
$? # exit status

# accept input 
read $name1 
read $name2 
result=$((name1 + name2)) # cannot space
result=$((name1 / name2)) # becomes math expression $(())

# ALWAYS use [[ ]] instead of []

# for loop 
for ((i=1; i<51; i++))
do                      # do is only for "for loop"
    echo $i 
done

# if else
if [[ $vara -gt $varb ]]; then
    echo X is greater than Y  
elif [[ $vara -eq $varb ]]; then 
    echo X is equal to Y   
elif [[ $vara -lt $varb ]]; then 
    echo X is less than Y  
fi