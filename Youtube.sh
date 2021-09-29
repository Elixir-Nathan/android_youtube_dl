#!/data/data/com.termux/files/usr/bin/bash

echo -e "\e[102mInstallation d'APT"
echo -e "\e[49m "
pkg install -y apt # Installation d'APT
sleep 3
clear

echo -e "\e[102mMise a niveau des paquet basique"
echo -e "\e[49m "
apt update && apt -y upgrade # Mise a jours des paquet
sleep 3
clear

echo -e "\e[102mInstallation des paquet de dépendance a YouTube-DL"
echo -e "\e[49m "
apt -y install python3 python3-pip nano curl bash ffmpeg boxes # Installation des choses requise pour YouTube-DL
sleep 3
clear

echo -e "\e[102mDemande d'accèes au stockage"
echo -e "\e[49m "
termux-setup-storage # Command d'accès au stockage interne
sleep 3
clear

echo -e "\e[102mInstallation de Youtube-DL"
echo -e "\e[49m "
pip3 install --upgrade youtube-dl # Installation de Youtube-DL
clear

echo -e "\e[102mCréation de fichier partager entre Termux et le téléphone"
echo -e "\e[49m "
mkdir /data/data/com.termux/files/home/storage/shared/Youtube
sleep 3

echo -e "\e[102mAjout de la configuration de Youtube-DL"
echo -e "\e[49m "
mkdir -p ~/.config/youtube-dl
curl https://raw.githubusercontent.com/Elixir-Nathan/Youtube-DL-Termux-Script/main/config -o ~/.config/youtube-dl/config

echo -e "\e[102mAjout de la fonction de téléchargement"
echo -e "\e[49m "
mkdir ~/bin
curl https://raw.githubusercontent.com/Elixir-Nathan/Youtube-DL-Termux-Script/main/termux-url-opener -o ~/bin/termux-url-opener