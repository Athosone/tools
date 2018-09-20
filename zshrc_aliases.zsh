alias ta="tig --all"
alias clean="rm -f *~"
alias clean-xcode="rm -rf /Volumes/Users_Data/Users/awerck/Library/Developer/Xcode/DerivedData"
alias replica="cd ~/Dev/ios_replica"
alias ows="find . -maxdepth 1 -name '*.xcworkspace' | head -n 1 | xargs open"
alias gawip='git add -A; git rm $(git ls-files --deleted) 2> /dev/null; git commit --amend --no-edit --no-verify -m "--wip-- [skip ci]"'
alias e="vim"
alias br="branch"
alias co='function __gitCheckout() { git checkout "$@" }; __gitCheckout'
alias gc-="git checkout -"
alias edit-aliases="vim ~/.oh-my-zsh/custom/zshrc_aliases.zsh"
alias find-file='function __findFile() { find . -name "$1" -type f | xargs ls -lh }; __findFile'
alias source-sh="source ~/.zshrc"
alias kill-simu='killall -9 "com.apple.CoreSimulator.CoreSimulatorService"'
alias c='clear'
