#!/bin/bash

cat /etc/os-release | grep PRETTY_NAME > os_type.txt
os_type=$(cut -d= -f2 os_type.txt)
#echo $os_type
srv="httpd"
tmpdir="/tmp/toolplate"
zip_file="2154_split_portfolio"
url="https://www.tooplate.com/zip-templates/2154_split_portfolio.zip"

if [ "$os_type"="CentOS Stream 9"]
then
        packages="wget httpd unzip"
        for pack in $packages
        do
                sudo dnf install $pack
        done
        systemctl start httpd
        if [ $? -eq 0 ]
        then
                echo "Service has been started successfully"
        fi
        sudo mkdir -p $tmpdir
        cd $tmpdir
        wget $url
        unzip $zip_file.zip
        sudo cp -pr $zip_file/* /var/www/html/
        rm -rf $tmpdir
else
        sudo apt update
        packages_ubuntu="wget apache2 unzip"
        for packa in $packages_ubuntu
        do
                sudo apt install $packa
        done
        systemctl start apache2
        if [ $? -eq 0 ]
        then
                echo "Service has been started successfully"
        fi
        sudo mkdir -p $tmpdir                                                                                                                                   
        cd $tmpdir
        wget $url
        unzip $zip_file.zip
        sudo cp -pr $zip_file/* /var/www/html/
        rm -rf $tmpdir
fi
