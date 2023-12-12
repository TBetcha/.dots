#########################
# BASIC ABBREVIATIONS #
#########################

abbr .. "cd ../"
abbr .2 "cd ../.."
abbr .3 "cd ../../.."
abbr .4 "cd ../../../.."
abbr .5 "cd ../../../../.."


#############################
# OPERATIONAL ABBREVIATIONS #
#############################


#Editor
alias vim "nvim"
alias vi "nvim"
alias n "nvim"
alias v "nvim"

#Tmux
alias tx "tmux"
alias txl "tmux ls"
alias txk "tmux kill-server"
alias txks "tmux kill-session -t"
alias txas "tmux attach-session -t"
alias txds "tmux detach -s"
alias txns "tmux new -s"
alias txnds "tmux new -d -s" 

#Programs
alias c "clean"
alias ld "lazydocker"
alias lg "lazygit"
alias cat "bat"
alias l "lsd -al . --git"
alias ls "lsd -al . --git"
alias lt "lsd --tree --git"
alias lta "lsd --tree  --all"
alias search "findme"
abbr stow "stow --target $HOME"
abbr setpager "\setenv PAGER 'nvim -'"
alias gpg "A04E0F5A8DF5E97C"

#Git
alias g  "git"
# abbr ga "git add"
# alias ga. "git add ."
# alias gs "git status"
# abbr gc "git commit -m"
# alias gd "git diff"
# alias gps "git push"
# alias gpl "git pull"
alias gem "git commit --allow-empty -m 'force'"
# alias gch "git checkout"
# alias glog "git log --graph --pretty=\"%C(yellow)%h%Creset%C(auto)%d%Creset %s %Cgreen%cr %C(bold blue)%an%Creset\""
abbr gundo "git push -f origin HEAD^:master"
abbr grh "git reset --hard"
abbr grmch "rm -r ~/.cache/git"

#Dots
alias dots "cd ~/.dots/stow"
abbr omz "~/.oh-my-zsh"
alias s. "$EDITOR ~/.dots/stow/scripts/.config/scripts/"
alias z. "$EDITOR ~/.dots/stow/zsh/.zshrc"
alias d. "$EDITOR ~/.dots/stow"
alias p. "$EDITOR ~/.config/fish/privatealiases.fish"
alias f. "$EDITOR ~/.dots/stow/fish/.config/fish"
alias k. "$EDITOR ~/.dots/stow/kitty/.config/kitty/kitty.conf"

#Processes
alias nst "npm start"
alias nsv "npm run serve"
alias nsvr "npm run server"
alias nrst "npm run start"
alias vs "code-insiders ./"
alias dw "dotnet watch run"
alias dr "dotnet run"
alias db "dotnet build"
# abbr zoostart "~/kafka34/bin/zookeeper-server-start.sh ~/kafka34/config/zookeeper.properties"
# abbr kafkastart "~/kafka34/bin/kafka-server-start.sh ~/kafka34/config/server.properties"


#####################
# DMG ABBREVIATIONS #
#####################


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


alias dmgvpn "openvpn3 session-start --config ~/.private-dots/vpn/client.ovpn"


#########################
# PERSONAL PROJ ALIASES #
#########################


