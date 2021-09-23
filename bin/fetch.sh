if [[ -f /etc/os-release ]]; then
  source /etc/os-release
elif [[ -d /bedrock ]]; then
  export NAME="Bedrock Linux"
fi

# pkg manager
if [[ -f /usr/bin/pacman ]]; then
  export PKGS="$(pacman -Q | wc -l)"
elif [[ -f /usr/bin/apt ]]; then
  export PKGS="$(apt list --installed | wc -l)"
fi

export CPU="$(cat /proc/cpuinfo | grep -P "model name" | uniq | cut -b 14-)"


echo "os    $NAME"
echo "kern  $(uname -sr)"
echo "pkgs  $PKGS"
echo "cpu   $CPU"