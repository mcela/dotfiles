export LANG="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"

cpp() {
 clear
 INPUTFILE=$1
 OUTPUTFILE=$2
 shift 
 shift
 g++ -std=c++11 -O2 $INPUTFILE -o $OUTPUTFILE && ./$OUTPUTFILE $*
}

alias cafe="caffeinate -d"
#alias irc="ssh -t XXX@YYY screen -rd"

alias gits="git status"
alias gitc="git add . && git commit -am"

alias gradlerun="./gradlew desktop:run"

alias l="ls -CF"
alias ll="ls -lhAaGp"

alias youtubemp3="youtube-dl --extract-audio --audio-format mp3 "
alias disabledock="defaults write com.apple.dashboard mcx-disabled -boolean YES && killall Dock"

alias pubkey="cat ~/.ssh/id_rsa.pub | pbcopy"

#export PATH="/usr/local/opt/openssl/bin:$PATH"
#export PATH=$PATH:/Applications/MySQLWorkbench.app/Contents/MacOS
#export PATH="ANDROID_HOME=/usr/local/share/android-sdk:$PATH"
#ANDROID_HOME=/usr/local/share/android-sdk:$PATH
#export PYTHONPATH=/usr/local/lib/python3.6/site-packages:$PYTHONPATH
