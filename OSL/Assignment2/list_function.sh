#list_function
#!/bin/sh

(awk -F ";" '{printf "Record: %d\n\t%s\n\t%s\n\t%s, %s,
%s\n\t%s\n==========================\n\n", NR, $1, $2, $3, $4,
$5, $6}' $BOOK ; echo "Press Q to Quit and return to the
menu." ) | less
