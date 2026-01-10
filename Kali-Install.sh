
echo "Only people with Root level permissions will be able to"
echo "This script is to be used on Debian systems only, and preferabley on Kali Linux"

packages=(nmap vim nano)
#echo "The packages being instaled are ${packages[@]}."

for i in "${packages[@]}"; do
  echo "$i"
  if apt-cache show $i > /dev/null; then #This checks to see if the package is availible to download
      echo "$i is availible to download"
    #sudo apt install -y $i #set it up to see if "apt show" != null then install otherwise...
  fi
done

#use one of these to check to see if the package is already installed on this machine
  #apt list --installed "$pkg" 2>/dev/null | grep -q "^$pkg/"
  #dpkg -s "$pkg" >/dev/null 2>&1 #dpkg is debian's package manager

#This comment was made with my phone :)

#ip address for our server 10.4.10.50:8006 #port is 8006