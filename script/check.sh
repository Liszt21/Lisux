LISUX=${LISUX:-~/Lisux}

echo "Checking..."

command_exists() {
	command -v "$@" >/dev/null 2>&1
}

text_in_file() {
    grep "$1" < "$2" >/dev/null 2>&1
}

CMD="pacman"
command_exists yum && CMD="yum"
command_exists apt && CMD="apt"
command_exists yay && CMD="yay"

text_in_file "LISUX" ~/.profile || {
    cat "$LISUX/config/profile" >> ~/.profile
    echo "Add init file to .profile"
}

echo $CMD
