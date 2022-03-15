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
apt -y install python3 nano curl bash ffmpeg # Installation des choses requise pour YouTube-DL
sleep 3
clear

echo -e "\e[102mDemande d'accèes au stockage"
echo -e "\e[49m "
termux-setup-storage # Command d'accès au stockage interne
sleep 3
clear

echo -e "\e[102mInstallation de Youtube-DL"
echo -e "\e[49m "
pip3 install --upgrade yt-dlp # Installation de Youtube-DL
clear

echo -e "\e[102mCréation de fichier partager entre Termux et le téléphone"
echo -e "\e[49m "
mkdir /data/data/com.termux/files/home/storage/shared/Youtube
sleep 3

echo -e "\e[102mAjout de la configuration de Youtube-DL"
echo -e "\e[49m "
rm ~/yt-dlp.conf
curl https://raw.githubusercontent.com/Elixir-Nathan/android_youtube_dl/main/config -o ~/yt-dlp.conf

echo -e "\e[102mAjout de la fonction de téléchargement"
echo -e "\e[49m "
mkdir ~/bin
rm ~/bin/termux-url-opener
curl https://raw.githubusercontent.com/Elixir-Nathan/android_youtube_dl/main/termux-url-opener -o ~/bin/termux-url-opener