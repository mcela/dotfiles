# 
Save `DefaultKeyBinding.dict` to `~/Library/KeyBindings/DefaultKeyBinding.dict`. (In finnish keyboard, there's a useless-waste-of-space key `å`, which I've switched to create `{}`, which makes programming nice.)

## M1 setup shit

https://www.wisdomgeek.com/development/installing-intel-based-packages-using-homebrew-on-the-m1-mac/

M1 brew
```
$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

x86 brew
```
$ arch -x86_64 zsh
$ cd /usr/local && sudo mkdir homebrew
$ sudo curl -L https://github.com/Homebrew/brew/tarball/master | sudo tar xz --strip 1 -C homebrew
$ sudo chown -R $(whoami) /usr/local/homebrew
```

.zshrc
```
ibrew='arch -x86_64 /usr/local/homebrew/bin/brew'
mbrew='arch -arm64e /opt/homebrew/bin/brew'
```


