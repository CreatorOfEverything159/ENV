echo "Hello, $USERNAME!"
count=0
while read -r line; do
    count=$(( $count + $( file $line | awk '{print $5 * $7}' ) ))
done <<< $(find . -name "*.png")
echo $count