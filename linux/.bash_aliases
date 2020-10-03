export TERM=xterm-color
export VISUAL=vim
export EDITOR="$VISUAL"

LD_LIBRARY_PATH=/usr/local/lib/:
export LD_LIBRARY_PATH

alias irc="ssh -t xxx@yyy screen -rd"

alias gitc="git add . && git commit -m"
alias gits="git status"
alias gitcount="git shortlog | grep -E '^[ ]+\w+' | wc -l"
alias opf="xdg-open ."

alias pngtojpg="find . -type f -name '*.png' | xargs -d '\n' -n 1 bash -c 'convert -resize 50% -quality 80 \"$0\" \"${0%.*}.jpg\"'"

alias javarun="java -jar"

open() {
  xdg-open $1 >/dev/null 2>&1 &
}

alias l="ls -CF"
alias ll="ls -lhAaGp"

alias debug="~/eclipse/cdt-stand-alone-debugger/cdtdebug >/dev/null 2>&1 &"
alias pubkey="cat ~/.ssh/id_rsa.pub | xclip -sel clip"
alias youtubemp3="youtube-dl -x --audio-format mp3"

alias pbcopy="xclip -sel clip"

fixgdx() {
	OPTIND=1

	while getopts ":jtudbrh" opt; do
	  case $opt in
	    j)
			 echo "fixing java version from 1.6 to 1.8"
			 grep -rl "$1/core" -e '1.6' | xargs sed -i 's/1.6/1.8/g'
	      ;;
	    t)
	      echo "fixing trailing lines"
	     	# sed -i 's/\r$//' $1/gradlew
	      ;;
	    u)
	      echo "fixing utf-8 not working"
	      # sed -i 's/UTF-8/ISO-8859-1/g' $1/core/build.gradle"
	      ;;
	    d)
	      classname=${OPTARG}
	      echo "fixing desktoplancher class name to $classname"
	      #grep -rl 'DesktopLauncher' ./ | xargs sed -i "s/DesktopLauncher/$classname/g"
	      ;;
	    b)
	      path=${OPTARG}
	      echo "build the app at $path"
	      $path/gradlew desktop:dist
	      ;;
	    r)
	      $path=${OPTARG}
	      echo "running the app"
	      java -jar $path/desktop/build/libs/desktop-1.0.jar
	      ;;
	    h)
				echo "help"
 				echo "usage: fixgdx <-option path>"
 				echo "options:"
 				echo " -j, fix java version"
 				echo " -t, fix trailing lines"
 				echo " -u, fix utf-8 to iso-8859-1"
 				echo " -d <classname>, fix DesktopLauncher class name into 2nd argument given"
 				echo " -b, build app"
 				echo " -r, run app"
 				echo " -h, show help"
	      ;;
	    \?)
	      echo "Invalid option: -$OPTARG" 
	      exit 1
	      ;;
	  esac
	done
}

export PATH="/usr/local/bin":$PATH

