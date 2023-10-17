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
abbr txl "tmux ls"
abbr txk "tmux kill-server"
abbr txks "tmux kill-session -t"
abbr txas "tmux attach-session -t"
abbr txds "tmux detach -s"
abbr txns "tmux new -s"
abbr txnds "tmux new -d -s" 

#Programs
abbr c "clear"
abbr ld "lazydocker"
abbr lg "lazygit"
abbr cat "bat"
abbr l "lsd -al ."
abbr ls "lsd -al ."
abbr lt "lsd --tree"
abbr search "findme"
abbr stow "stow --target $HOME"
abbr setpager "\setenv PAGER 'nvim-'"


#Git
abbr g  "git"
abbr ga "git add"
abbr ga. "git add ."
abbr gs "git status"
abbr gc "git commit -m"
abbr gd "git diff"
abbr gps "git push"
abbr gpl "git pull"
abbr gem "git commit --allow-empty -m 'argo sucks'"
abbr gch "git checkout"
abbr glog "git log --graph --pretty=\"%C(yellow)%h%Creset%C(auto)%d%Creset %s %Cgreen%cr %C(bold blue)%an%Creset\""
abbr gundo "git push -f origin HEAD^:master"
abbr grh "git reset --hard"
abbr grmch "rm -r ~/.cache/git"

#Dots
abbr z. "nvim ~/.dots/stow/zsh/.zshrc"
abbr omz "~/.oh-my-zsh"
abbr dots "nvim ~/.dots/stow"
abbr dotfiles "cd ~/.dots/stow"
abbr f. "$EDITOR ~/.dots/stow/fish/.config/fish"
abbr k. "$EDITOR ~/.dots/stow/kitty/.config/kitty/kitty.conf"
abbr scripts "$EDITOR ~/.dots/stow/scripts/.config/scripts/"

#Processes
abbr nst "npm start"
abbr nsv "npm run serve"
abbr nsvr "npm run server"
abbr nst "npm run start"
abbr vs "code-insiders ./"
abbr dw "dotnet watch run"
abbr dr "dotnet run"
abbr db "dotnet build"
# abbr zoostart "~/kafka34/bin/zookeeper-server-start.sh ~/kafka34/config/zookeeper.properties"
# abbr kafkastart "~/kafka34/bin/kafka-server-start.sh ~/kafka34/config/server.properties"


#####################
# DMG ABBREVIATIONS #
#####################

abbr rocks "rm -rf bin/Debug/net6.0/rocksdb/ && rm -rf rocksdb"
abbr dmg "cd ~/code/dmg"
abbr leapi "cd ~/code/dmg/legacyprovideronboarding/api/dmg.legacy-provider-onboarding-app.api"
abbr lestate "cd ~/code/dmg/legacyprovideronboarding/state/dmg.legacy-provider-onboarding-app.state"
abbr meapi "cd ~/code/dmg/members/api/dmg.providerorg-member-edit-app.api"
abbr mestate "cd ~/code/dmg/members/state/dmg.providerorg-member-edit-app.state"
abbr csapi "cd ~/code/dmg/companysettings/api/dmg.providerorg-profile-edit-app.api"
abbr csstate "cd ~/code/dmg/companysettings/state/dmg.providerorg-profile-edit-app.state"
abbr opapi "cd ~/code/dmg/opportunities/api/dmg.opportunity-app.api"
abbr opstate "cd ~/code/dmg/opportunities/state/dmg.opportunity-app.state"
abbr neapi "cd ~/code/dmg/newprovideronboarding/api/dmg.new-provider-onboarding-app.api"
abbr apapi "cd ~/code/dmg/approvaldashboard/api/dmg.approval-dashboard-app.api"
abbr apstate "cd ~/code/dmg/approvaldashboard/state/dmg.approval-dashboard-app.state"
abbr apmat "cd ~/code/dmg/approvaldashboard/materializer/dmg.approval-dashboard-app.materializer"
abbr invite "cd ~/code/dmg/invitemember/dmg.providerorg-invite-member.api"
abbr master "cd ~/code/dmg/provider/master/dmg.provider.master"
abbr maapi "cd ~/code/dmg/provider/api/dmg.provider.api"
abbr teapi "cd ~/code/dmg/technicianapp/api/dmg.technician-app.provider-api"
abbr testate "cd ~/code/dmg/technicianapp/state/dmg.technician-app.state"
abbr fastate "cd ~/code/dmg/fastaccept/state/dmg.fast-accept-app.state"
abbr mystate "cd ~/code/dmg/myjobs/state/dmg.my-jobs-app.state"
abbr myapi "cd ~/code/dmg/myjobs/api/dmg.my-jobs-app.api"
abbr diapi "cd ~/code/dmg/dispatcherinvoiceronboarding/api/dmg.dispatcher-invoicer-onboarding-app.api"


abbr dmgvpn "openvpn3 session-start --config ~/.private-dots/vpn/client.ovpn"

#########################
# PERSONAL PROJ ALIASES #
#########################

abbr ifaa "cd ~/code/ifaadfw/Server"

