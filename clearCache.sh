#!/bin/sh

rm -r ~/projects/elama/app/cache/* && 
echo "cache optimal is cleared."
rm -r ~/projects/easy/web/assets/* &&
echo "cache easy is cleared."

ls -al ~/projects/elama/app/cache/
ls -al ~/projects/easy/web/assets/

