!/bin/bash

read line
line==$( sed -e 's/!.//g' <<<"$line" )
orig=$( wc -c <<<"$line" )
stripped=$( sed -e 's/<[^>]*>/<>/g' <<<"$line" | wc -c )

echo $(( $orig - $stripped ))
