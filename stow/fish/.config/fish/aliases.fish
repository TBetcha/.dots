#  _____ _     _          _    _ _
# |  ___(_)___| |__      / \  | (_) __ _ ___  ___  ___
# | |_  | / __| '_ \    / _ \ | | |/ _` / __|/ _ \/ __|
# |  _| | \__ \ | | |  / ___ \| | | (_| \__ \  __/\__ \
# |_|   |_|___/_| |_| /_/   \_\_|_|\__,_|___/\___||___/



#########################
# BASIC ABBREVIATIONS #
#########################

abbr .. "cd ../"
abbr ... "cd ../.."
abbr .... "cd ../../.."
abbr ..... "cd ../../../.."
abbr ...... "cd ../../../../.."

alias .1 "cd ../"
alias .2 "cd ../.."
alias .3 "cd ../../.."
alias .4 "cd ../../../.."
alias .5 "cd ../../../../.."
alias cx "chmod +x"
alias c clear
abbr !! sudo !!


#############################
# OPERATIONAL ABBREVIATIONS #
#############################


#Editor
alias vim "nvim"
alias vi "nvim"
alias v "nvim"
alias . "nvim ."
alias vimdiff 'nvim -d'
abbr n "env TERM=wezterm nvim"


#Tmux
alias tx "tmux"
alias txl "tmux ls"
alias txk "tmux kill-server"
alias txks "tmux kill-session -t"
alias txas "tmux attach-session -t"
alias txds "tmux detach -s"
alias txns "tmux new -s"
alias txnds "tmux new -d -s" 
alias ftx "fzf-tmux" 

#Programs
abbr lzd "lazydocker"
abbr lzg "lazygit"
abbr cat "bat"
abbr search "findme"
abbr stow "stow --target $HOME"
alias neofetch "pfetch"
thefuck --alias fck | source 

# ls aliases
alias l "eza -la --icons --git --no-permissions --no-user --sort=modified --reverse"
abbr ls "eza -la --icons --git --sort=modified --reverse"
alias lt "eza -lT --icons --git"
alias lD "eza -lD --sort=modified --reverse"
alias lf "eza -lF --color=always | grep -v /"
alias lh "eza -dl .* --group-directories-first --sort=modified --reverse"
alias ld "eza -al --icons --git --group-directories-first --sort=modified --reverse"
abbr setpager "\setenv PAGER 'nvim -'"

#Git
alias g  "git"
alias gem "git commit --allow-empty -m 'empty'"
alias glog "git log --graph --pretty=\"%C(yellow)%h%Creset%C(auto)%d%Creset %s %Cgreen%cr %C(bold blue)%an%Creset\""
abbr gundo "git push -f origin HEAD^:master"
abbr grh "git reset --hard"
abbr grao "git remote add origin"
abbr grau "git remote add upstream"
abbr gma "git merge --abort"
abbr gmc "git merge --continue"
abbr gdn "nvim +DiffviewOpen"
abbr grmch "rm -r ~/.cache/git"

#Dots
abbr omz "~/.oh-my-zsh"
alias s. "$EDITOR ~/.dots-arch/.dots/stow/scripts/.config/scripts/"
alias z. "$EDITOR ~/.dots-arch/.dots/stow/zsh/.zshrc"
alias d. "$EDITOR ~/.dots-arch/.dots/stow"
alias dots "cd  ~/.dots-arch/.dots/stow"
alias p. "$EDITOR ~/.config/fish/privatealiases.fish"
alias f. "$EDITOR ~/.dots-arch/.dots/stow/fish/.config/fish"
alias k. "$EDITOR ~/.dots-arch/.dots/stow/kitty/.config/kitty/kitty.conf"
alias w. "$EDITOR ~/.dots-arch/.dots/stow/wezterm/.config/wezterm/"
alias wf. "$EDITOR ~/.dots-arch/.dots/stow/wezterm/.config/wezterm/config/fonts.lua"

#Processes
alias nst "npm start"
alias nsv "npm run serve"
alias nsvr "npm run server"
alias nrst "npm run start"
alias vs "code-insiders ./"
alias dw "dotnet watch run"
alias dr "dotnet run"
alias db "dotnet build"
alias drs "dotnet restore"


# abbr zoostart "~/kafka34/bin/zookeeper-server-start.sh ~/kafka34/config/zookeeper.properties"
# abbr kafkastart "~/kafka34/bin/kafka-server-start.sh ~/kafka34/config/server.properties"

#Arch Setup
alias conkme "conky -c "$HOME"/.config/conky/qtile/01/DoomOne.conkyrc"
alias conkmedrac "conky -c "$HOME"/.config/conky/qtile/01/Dracula.conkyrc"
alias kc="killall conky"

#####################
# DMG ABBREVIATIONS #
#####################

#NOTE: dadbo postgres conn string format
#postgres://provider_org_user:{password}@{host}:5432/provider_org_db


alias rocks "rm -rf bin/Debug/net6.0/rocksdb/ && rm -rf rocksdb"
alias dmg "cd ~/code/dmg"
alias leapi "cd ~/code/dmg/legacyprovideronboarding/api/dmg.legacy-provider-onboarding-app.api"
alias lest "cd ~/code/dmg/legacyprovideronboarding/state/dmg.legacy-provider-onboarding-app.state"
alias meapi "cd ~/code/dmg/members/api/dmg.providerorg-member-edit-app.api"
alias mest "cd ~/code/dmg/members/state/dmg.providerorg-member-edit-app.state"
alias csapi "cd ~/code/dmg/companysettings/api/dmg.providerorg-profile-edit-app.api"
alias csst "cd ~/code/dmg/companysettings/state/dmg.providerorg-profile-edit-app.state"
alias opapi "cd ~/code/dmg/opportunities/api/dmg.opportunity-app.api"
alias opst "cd ~/code/dmg/opportunities/state/dmg.opportunity-app.state"
alias neapi "cd ~/code/dmg/newprovideronboarding/api/dmg.new-provider-onboarding-app.api"
alias apapi "cd ~/code/dmg/approvaldashboard/api/dmg.approval-dashboard-app.api"
alias apst "cd ~/code/dmg/approvaldashboard/state/dmg.approval-dashboard-app.state"
alias apmat "cd ~/code/dmg/approvaldashboard/materializer/dmg.approval-dashboard-app.materializer"
alias invite "cd ~/code/dmg/invitemember/dmg.providerorg-invite-member.api"
alias master "cd ~/code/dmg/provider/master/dmg.provider.master"
alias maapi "cd ~/code/dmg/provider/api/dmg.provider.api"
alias teapi "cd ~/code/dmg/technicianapp/api/dmg.technician-app.provider-api"
abbr test "cd ~/code/dmg/technicianapp/state/dmg.technician-app.state"
alias fast "cd ~/code/dmg/fastaccept/state/dmg.fast-accept-app.state"
alias myst "cd ~/code/dmg/myjobs/state/dmg.my-jobs-app.state"
alias myapi "cd ~/code/dmg/myjobs/api/dmg.my-jobs-app.api"
alias diapi "cd ~/code/dmg/dispatcherinvoiceronboarding/api/dmg.dispatcher-invoicer-onboarding-app.api"
alias pdapi "cd ~/code/dmg/providerdashboard/api/dmg.provider-dashboard-app.api"
alias pdst "cd ~/code/dmg/providerdashboard/state/dmg.provider-dashboard-app.state"
alias pbac "cd ~/code/dmg/providerbackend/dmg.provider.backend"


alias dmgvpn "openvpn3 session-start --config client.ovpn"
alias killdmgvpn "openvpn3 session-manage --disconnect --path"
alias dmgvpnlist "openvpn3 sessions-list"

####################
### ARCH ALIASES ###
####################

##########
# PACMAN #
##########

# install
alias pms='sudo pacman -S'
# remove
alias pmr='sudo pacman -R'
# force remove
alias pmrf='sudo pacman -Rh'
# skip dependency
alias pmrskip='sudo pacman -Rd'
# pacman remo
alias pmrs='sudo pacman -Rs'
alias pmrdd='sudo pacman -Rdd'
# who owns this file
alias pmqo='sudo pacman -Qo'
# query about installable package and it  dependencies
alias pmsii='sudo pacman -Sii'
# search
alias pmss="sudo pacman -Ss --color auto"
# NOTE:
# update and force mirror refresh can be problematic
# crashed my system last time
# alias pmsyyu="sudo pacman -Syyu"
# plain update

# update, force mirror refresh, and downgrade pkgs from forced mirror change
alias pmsyyuu="sudo pacman -Syyuu"
alias pmsyu="sudo pacman -Syu"
# This will generate a list of explicitly installed packages
alias pmls="sudo pacman -Qqe"
# This will generate a list of explicitly installed packages without dependencies
alias pmlswd="sudo pacman -Qqet"
# list of AUR packages
alias pmlsaur="sudo pacman -Qqem"
# add > list at the end to write to a file
# install packages from list
# pacman -S --needed - < my-list-of-packages.txt


#######
# YAY #
#######

alias yyss="yay -Ss"
alias yys="yay -S"
# remove package and dependencies
alias yyrma="yay -Rns"
#skip integrity check
alias yayskip="yay -S --mflags --skipinteg"

########
# PARU #
########

# paru as aur helper - updates everything
alias prsyu="paru -Syu --noconfirm"
#skip integrity check
alias paruskip="paru -S --mflags --skipinteg"

alias depends='function_depends'


###############
# OTHER ARCH #
###############

if type -q exa
    alias ls="exa"
    alias xls="exa -a --icons --color=always --group-directories-first"
    alias xll="exa -lag --icons --color=always --group-directories-first --octal-permissions"
end


## Colorize the grep command output for ease of use (good for log files)##
alias grep="grep --color=auto"
alias egrep="egrep --color=auto"
alias fgrep="fgrep --color=auto"

#pacman unlock
alias unlock="sudo rm /var/lib/pacman/db.lck"
alias rmpacmanlock="sudo rm /var/lib/pacman/db.lck"

#free
alias free="free -mt"

#switch between bash, zsh and fish
alias tobash="sudo chsh $USER -s /bin/bash && echo 'Done. Now log out.'"
alias tozsh="sudo chsh $USER -s /bin/zsh && echo 'Done. Now log out.'"
alias tofish="sudo chsh $USER -s /bin/fish && echo 'Done. Now log out.'"

#hardware info --short
alias hw="hwinfo --short"

#check cpu
alias cpu="cpuid -i | grep uarch | head -n 1"

#Recent Installed Packages
alias rip="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -200 | nl"
alias riplong="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -3000 | nl"

#Cleanup orphaned packages
alias cleanup="sudo pacman -Rns (pacman -Qtdq)"

#clear
alias clean="clear; seq 1 (tput cols) | sort -R | sparklines | lolcat"

#search content with ripgrep
alias rg="rg --sort path"

#shutdown or reboot
alias sdn="sudo shutdown now"
alias rbt="reboot"

#pamac
alias pamac-unlock="sudo rm /var/tmp/pamac/dbs/db.lock"

alias kc="killall conky"


#########################
# PERSONAL PROJ ALIASES #
#########################

#############
# FUNCTIONS #
#############

function cd
    builtin cd $argv; and eza -la --icons --git --sort=modified --reverse .
end

# reload fish config
function reload
    exec fish
    set -l config (status -f)
    echo "reloading: $config"
end

# Pretty prints the disk space of the given directory
function ds -a dir
  printf "Disk Space for $(set_color -i red)$dir$(set_color normal):$(set_color -o cyan) "
  du -sh $dir | head -n1 | awk '{print $1;}'
end

# See what is runnin on what port
function port -a PORT
  sudo lsof -i -n -P | grep TCP | grep $PORT
end

# Creates a dir and CD into it
function take -a dir
  mkdir -p $dir
  cd $dir
end

# Fancy find shit
function findme 
   rg --line-number --no-heading --color always --smart-case "$1" | fzf -d ':' -n 2.. --ansi --no-sort --preview-window 'right:70%:+{2}' --preview 'bat --style numbers --color always --highlight-line {2} {1}'
end

function sudo --description "Replacement for Bash 'sudo !!' command to run last command using sudo."
    if test "$argv" = !!
        echo sudo $history[1]
        eval command sudo $history[1]
    else
        command sudo $argv
    end
end

function glist
    git log --graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr" $argv | fzf --ansi --no-sort --reverse --tiebreak=index --toggle-sort=\` --bind "ctrl-m:execute: echo '{}' | grep -o '[a-f0-9]\{7\}' | head -1 | xargs -I % sh -c 'git show --color=always % | less -R'"
end

# Fish command history
function history
    builtin history --show-time='%F %T ' | sort
end

# Make a backup file
function backup --argument filename
    cp $filename $filename.bak
end

function personal
    cp -rf /personal/ ~
    cp -rf /personal/.* ~
end

# recently installed packages
function ripp --argument length -d "List the last n (100) packages installed"
    if test -z $length
        set length 100
    end
    expac --timefmt='%Y-%m-%d %T' '%l\t%n' | sort | tail -n $length | nl
end

function ex --description "Extract bundled & compressed files"
    if test -f "$argv[1]"
        switch $argv[1]
            case '*.tar.bz2'
                tar xjf $argv[1]
            case '*.tar.gz'
                tar xzf $argv[1]
            case '*.bz2'
                bunzip2 $argv[1]
            case '*.rar'
                unrar $argv[1]
            case '*.gz'
                gunzip $argv[1]
            case '*.tar'
                tar xf $argv[1]
            case '*.tbz2'
                tar xjf $argv[1]
            case '*.tgz'
                tar xzf $argv[1]
            case '*.zip'
                unzip $argv[1]
            case '*.Z'
                uncompress $argv[1]
            case '*.7z'
                7z $argv[1]
            case '*.deb'
                ar $argv[1]
            case '*.tar.xz'
                tar xf $argv[1]
            case '*.tar.zst'
                tar xf $argv[1]
            case '*'eza -al --icons --git --sort=modified --reverse
                echo "'$argv[1]' cannot be extracted via ex"
        end
   else
       echo "'$argv[1]' is not a valid file"
   end
end

function less
    command less -R $argv
end

function function_depends
    set search $argv[1]
    sudo pacman -Sii $search | grep "Required" | sed -e "s/Required By     : //g" | sed -e "s/  /\n/g"
end

