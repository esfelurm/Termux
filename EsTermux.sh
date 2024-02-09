#!/bin/bash

green='\033[0;32m'
red='\033[0;31m'
yellow='\033[01;33m'
no_color='\033[0m'
echo -e "${green}" 
cat banner.txt
echo -e "${green}Channel : ${red}@esfelurm${no_color}\n\n"
echo "1. Install Python libraries"
echo "2. Install system packages"
echo "Choose an option:"
read selection

if [ $selection -eq 1 ]; then
    libraries=("requests" "colorama" "uuid" "user-agent" "urllib3" "termcolor" "Telethon" "telepot" "telebot" "regex" "rarfile" "pyttsx3" "pillow" "PySocks" "python-telegram-bot" "Pyrogram" "pyfiglet" "psutil" "patool" "Markdown" "jdatetime" "httpx" "gTTS" "Flask" "exif" "Cython" "colored" "bs4" "asyncio" "python-socks" "pycryptodome" "pynacl" "pyproject-toml" "wheel" "pycryptodomex")

    installed_libraries=()

    for lib in "${libraries[@]}"
    do
        if pip show $lib &> /dev/null; then
            echo -e "${green}The library $lib is already installed.${no_color}"
        else
            echo -e "${red}The library $lib is not installed! Installing library $lib${no_color}"
            pip install $lib
            echo -e "${green}The installation of the library $lib has been completed!${no_color}"
            clear
            installed_libraries+=($lib)
        fi
    done

    echo "The number of installed libraries is ${#installed_libraries[@]}"
    echo "List of installed libraries: ${installed_libraries[@]}"
elif [ $selection -eq 2 ]; then
    names=("python" "git" "php" "perl" "curl" "wget" "openssl" "openssh" "tor" "golang" "gcc" "python2" "ruby" "nmap" "tar" "zip" "unzip" "wcalc" "nodejs" "apache2" "figlet" "lua" "proot" "net-tools" "cowsay" "host" "nano" "vim" "nodejs-lts" "termux-api" "libsodium" "binutils" "libxml2" "libxslt" "matplotlib" "libjpeg-turbo" "libpng")

    installed_packages=()

    for name in "${names[@]}"
    do
        if dpkg -l | grep -q $name; then
            echo -e "${green}The package ${yellow}$name ${green}is already installed.${no_color}"
        else
            echo -e "${red}The package ${yellow}$name ${red}is not installed! ${green}Installing package $name${no_color}"
            sleep 1
            pkg install $name -y
            echo -e "${green}The installation of the package ${yellow}$name ${green}has been completed!${no_color}"
            sleep 1
            clear
            installed_packages+=($name)
        fi
    done
    clear
    echo -e "${green}The number of installed packages is ${yellow}${#installed_packages[@]}"
    echo -e "${green}List of installed packages: ${yellow}[ ${installed_packages[@]}]"
    echo -e "${green}Successfully completed!"
else
    echo -e "${red}Invalid selection!${no_color}"
fi
