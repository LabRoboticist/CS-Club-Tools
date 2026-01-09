
echo "Only people with Root level permissions will be able to"
echo "This script is to be used on Debian systems only, and preferabley on Kali Linux"

packages=(nmap vim nano)
#echo "The packages being instaled are ${packages[@]}."

for i in "${packages[@]}"; do
  echo "$i"
  if [[apt-cache show $i > /dev/null]]; then
      echo "$i is availible to download"
    #sudo apt install -y $i #set it up to see if "apt show" != null then install otherwise...
  fi
done
