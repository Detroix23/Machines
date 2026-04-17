# snake.bashrc
# By Detroix23.
#
# Simple RC to make the bash prompt nicer and multiline.
# With its curves, looks like a little snake.
#
# See: https://github.com/Detroix23/Machines

# Colors
esc="\033"
end="${esc}[0m"

# Startup
start_date=`date +"%d/%m/%Y %H:%M:%S"`
color_date="${esc}[1;34m"

fastfetch
printf "${color_date} ¤ Date: ${start_date} ${end} \n"

# Shell prompt
end="\[${esc}[0m\]"
color_all="\[${esc}[0;32m\]"
color_branch="\[${esc}[0;33m\]"
color_user="\[${esc}[0;34m\]"
color_path="\[${esc}[1;34m\]"

# Function to get the current git branch
function parse_git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
# Add the git branch to the prompt
export PS1="
${color_all}╭──(${color_user}\u@\h${color_all})─[${color_path}\w${color_all}]${color_branch}$(parse_git_branch) ${end} 
${color_all}╰─$ ${end}"
