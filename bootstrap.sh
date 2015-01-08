#!/bin/bash
set -e
echo '
       ooMMMo
    ooMMoMMoMMMoo
 oMMM"MoM" "M"MM"MMo
MMMoM""       ""MMM"M                            M   M"
MM"M     o o     M"MM     oooMoo  ooMoo   ooMo  MMoo oo  ooMoo
MMMM    "MMMo    MMMo     MM   M Mo"  MM M"o MM "M   "M "M
MoMM   "MMM"M    MMMM     Mo   M"Mo   oM"MM " "  Mo  MM MM
M"MM    M""      MMoM     "MoMM"  "MoM"  "oMoM" "MoM Mo  "oMo"
MMMM    M     oMM"MMo     M"
 "oM   "" ooMM"MMM""
        MMM"MMM"
        "M"M"
'

echo 'Boostrapping your computer...'

# Oh My ZSH!
if [[ ! -d ~/.oh-my-zsh ]]; then
  curl -L http://install.ohmyz.sh | sh
fi

# Homebrew
if [[ ! -x /usr/local/bin/brew ]]; then
  echo 'Installing homebrew...'
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Pip
if [[ ! -x `which pip` ]]; then
  echo 'Installing pip...'
  sudo easy_install pip
fi

# Ansible
if [[ ! -x `which ansible` ]]; then
  echo 'Installing ansible...'
  sudo pip install ansible --quiet
fi

# Run Poetic playbook
ansible-playbook site.yml -i inventory --ask-sudo-pass
