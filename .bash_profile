alias desk='ssh dev-dsk-sjiachen-2b-ce348e38.us-west-2.amazon.com'
export ECLIPSE_HOME='/Applications/Eclipse.app/Contents/Eclipse/'
export PATH=$BRAZIL_CLI_BIN:$PATH
alias m='/Applications/MacVim.app/Contents/bin/mvim'
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export PS1='\u@\H:\w$ '
alias bb='brazil-build'
alias bbs='brazil-build server'
alias pp='post-review --pull-request'
alias krbcc='kinit -e aes128-cts-hmac-sha1-96 -c /tmp/krbcc__; export KRB5CCNAME=/tmp/krbcc__'
alias odin='ssh -L 2009:localhost:2009 sjiachen.aka.corp.amazon.com -f -N'
alias gck='git checkout .'
alias gsu='git branch --set-upstream-to=origin/mainline'

[ -s "/Users/sjiachen/.scm_breeze/scm_breeze.sh" ] && source "/Users/sjiachen/.scm_breeze/scm_breeze.sh"
