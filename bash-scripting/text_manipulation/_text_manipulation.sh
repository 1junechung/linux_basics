##### sort, uniq, tr, wc , cut 
##### grep, awk, sed 

echo SORT and UNIQ and TR and wc ...
############## sort 
sort && sort -r (reverse) 
sort -n # number sort ex. 4 , 44.5 , 5.0 (x)
############## uniq 
uniq && uniq -c (numbers) && uniq -i (insensitive)
uniq -u (only unique lines)
############## word count
wc -l (lines) && wc -w (words) && wc -m (char) && wc -c (bytes)
############## tr
tr "," " " # replace , with space
tr '\n' ',' # horizontal -> vertical
tr -d " " # delete space
tr -d '\\b' # delete with special characters -> deletes \b !! need single quote
tr -d "[a-z]"
# tr can only replace same amount of characters
# tr replace is not that complete... (comparison is by character only , not whole string)

############## cut 
cut  -b -c -f # byte, char, field(table), deliminater for fields
cut -c1,4 # only print 3rd and 7th 
cut -c1-4 # print first ~ 4th 
cut -c13- # infinite -> leave as empty 13-XX
cut -d ' ' -f1-3 # "," as deliminater - 1st ~ 3rd field # default deliminator = tab


# head and tail 
head -n 10 && tail -n 8

######################### sed 
echo replace word using "/s" substitute sed ....
sed -i '/s/hello/annyoung/g' # replaces hello to annyoung + case insensitive 


######################### grep 
echo grep only exact words ... 
echo grep only matching word ...
echo grep "case insensitive"...
grep -w -i -o "helloworld" 
grep "\-o" # grep sepcial characters / will grep "-o"
grep -e "hello" -e "annyoung" -e "adios" # grep multiple words
grep "\bhelloworld\b" # grep with word boundary "\b"

cat workday.txt | grep -w -i -o "the\|ugliest\|contest\|dog\|world's" | sort | uniq -c -i | awk '{print $1}' | tr '\n' ','

######################### awk 
awk '{print $1}' # default divides by spaces 
awk -F "," '{print $0}' '{print $1 $2 $3}'

# examples 
echo sort including second character of number ...

echo print out certain colums with "&" character ... 
awk -F "," '{print $0}' '{print $1 "\t" $2 "\t" $3}' # print with tab
awk -F "," '{print $0}' '{print $1 " & " $2 " & " $3}' # print with space and & 

echo awk print on value filtering ... 
awk '{ if ($7 == "finding value" ) { print } }' # print for only 7th column matching value


