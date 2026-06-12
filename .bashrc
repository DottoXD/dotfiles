#
# ~/.bashrc
#

[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

if uwsm check may-start > /dev/null; then
	exec uwsm start hyprland.desktop
fi

alias gcaf='git add -A && git commit -m'
alias android-emulator='env QT_QPA_PLATFORM=xcb ~/Android/Sdk/emulator/emulator -avd "Medium_Phone" -gpu host -no-snapshot'

export PATH="$HOME/.cache/.bun/bin:$HOME/Documenti/Dev/Flutter/bin:$PATH"
export ANDROID_AVD_HOME="$HOME/.config/.android/avd"
export ANDROID_HOME="$HOME/Android/Sdk"
