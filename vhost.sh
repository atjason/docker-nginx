#!/bin/bash

dir=$(pwd)
operate=$1
domain=$2

if [ -z "$operate" ] || [ -z "$domain" ]; then
    echo "Usage:"
    echo "  ./vhost.sh add domain.com"
    echo "  ./vhost.sh del domain.com"
    exit 1
fi

echo "$operate $domain"

if [ "$operate" = "add" ]; then
    mkdir -p ./www/$domain/.well-known
    mkdir -p ./www/$domain/public

    cd ./nginx/conf.d/
    cp conf.demo $domain.conf
    sed -i "s/demo.com/$domain/g" $domain.conf

    echo "Done"

elif [ "$operate" = "del" ]; then
    rm -rf ./www/$domain/.well-known
    rm -rf ./www/$domain/public

    rm ./nginx/conf.d/$domain.conf

    echo "Done"
fi

cd $dir
./reload-nginx.sh
