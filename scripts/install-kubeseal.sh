loading_screen() {
    printf "."
    sleep 1
    printf "."
    sleep 1
    printf "."
    printf "\n"
}

KUBESEAL_VERSION='0.36.1'
printf "Your current kubeseal version is %s\n" "$(kubeseal --version)"
printf "The version of kubeseal to be installed is v%s\n" "${KUBESEAL_VERSION}"
read -p "Do you want to continue? (y/n): " answer

if [[ "$answer" == "y" ]]; then
    echo "Continuing..."
elif [[ "$answer" == "n" ]]; then
    echo "Exiting script."
    exit 0
else
    echo "Invalid input. Please type y or n."
    exit 1
fi

echo Downloading zip...
wget "https://github.com/bitnami-labs/sealed-secrets/releases/download/v${KUBESEAL_VERSION}/kubeseal-${KUBESEAL_VERSION}-linux-amd64.tar.gz"
tar -xvzf kubeseal-${KUBESEAL_VERSION}-linux-amd64.tar.gz
loading_screen

printf "\n"
echo Installing kubeseal binary into /usr/local/bin
sudo install -m 755 kubeseal /usr/local/bin/kubeseal
echo Sucessfully installed kubeseal into /usr/local/bin 
loading_screen

printf "\n"
printf "Removing downloaded kubeseal zip from %s\n" "$(pwd)"
rm kubeseal kubeseal-${KUBESEAL_VERSION}-linux-amd64.tar.gz
echo Removed archived kubeseal download!
loading_screen

printf "Installation complete! %s is installed.\n\n" "$(kubeseal --version)"