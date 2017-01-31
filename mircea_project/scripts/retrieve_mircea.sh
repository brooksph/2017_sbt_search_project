for i in $(cat mircea_refs.txt) 
do 
wget -m $i
done
