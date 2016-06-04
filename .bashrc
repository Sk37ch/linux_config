################################################################################
### SFU 
alias e03='ssh -Y asepkows@cs-vnl-e03.csil.sfu.ca'
alias e04='ssh -Y asepkows@cs-vnl-e04.csil.sfu.ca'
alias e99='ssh -Y stewartm@cs-vnl-e04.csil.sfu.ca'
alias 471r='rsync -avz ./IPV6_ECHO_CLIENT_SERVER asepkows@cs-vnl-e03.csil.sfu.ca:/home/asepkows'
#############################################################################
### Mac only ###################################################################
alias agf='ls -R | ag $1';
alias hide='defaults write com.apple.finder CreateDesktop false; killall Finder'
alias show='defaults write com.apple.finder CreateDesktop true; killall Finder'
alias cddev='cd /Users/Alex/Dev'
alias cdms='cd /Users/Alex/Dev/ms_work'
alias devp='cd /Users/Alex/Dev/python'
alias batt='open /Applications/Battle.net.app/'
alias taila='adb logcat chromium:D SystemWebViewClient:D *:S'
export PATH="$(brew --prefix coreutils)/libexec/gnubin:/usr/local/bin:$PATH"
export ECLIPSE_HOME='/Applications/Eclipse.app/Contents/Eclipse'
alias eclimd='$ECLIPSE_HOME/eclimd'
alias sdeclimd='$ECLIPSE_HOME/eclimd -command shutdown'
alias svi='ssh svi.us.ericsson.net -l ealesep'
alias sch='cd /Users/Alex/Desktop/school'
alias com='cd /Users/Alex/Desktop/school/379/ASS4/grouse/'
export GROUSE_INPUT_PATH='/Users/Alex/Desktop/school/379/ASS4/grouse/input/';
export GROUSE_OUTPUT_PATH='/Users/Alex/Desktop/school/379/ASS4/grouse/output/';
#alias gcompile='java -cp /Users/Alex/Desktop/school/379/ASS4/grouse/grouse/bin applications/GrouseCompiler $GROUSE_INPUT_PATH'

function gtoken {
  java -ea -cp /Users/Alex/Desktop/school/379/ASS4/grouse/bin applications/GrouseTokenPrinter $GROUSE_INPUT_PATH$1;
}

export -f gtoken
function gast {
  java -ea -cp /Users/Alex/Desktop/school/379/ASS4/grouse/bin applications/GrouseAbstractSyntaxTree $GROUSE_INPUT_PATH$1;
}

export -f gast

function gcompile {
  java -ea -cp /Users/Alex/Desktop/school/379/ASS4/grouse/bin applications/GrouseCompiler $GROUSE_INPUT_PATH$1;
}
export -f gcompile

function gcompile_alltests {
  gcompile 'floats.grouse';
  gcompile 'integers.grouse';
  gcompile 'booleans.grouse';
  gcompile 'characters.grouse';
  gcompile 'strings.grouse';
  gcompile 'casting.grouse';
  gcompile 'variables.grouse';
  gcompile 'nestedExpressions.grouse';
}
export -f gcompile


alias gasm='vim $GROUSE_INPUT_PATH'
alias gtokens='java -cp /Users/Alex/Desktop/school/379/ASS4/grouse/bin applications/GrouseTokenPrinter $GROUSE_INPUT_PATH'
### GO
export GOROOT=/usr/local/go
export PATH=$GOROOT/bin:$PATH
export GOPATH=/Users/Alex/Dev/gobin
### boot2docker
export DOCKER_CERT_PATH=/Users/Alex/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1
export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_HOST_DB=192.168.59.103
### docker
alias docker_pg='docker run -p ::5432 --name db -e POSTGRESQL_DB=harl -e POSTGRESQL_USER=docker -e POSTGRESQL_PASS=docker postgres'
alias dockerdb='psql -h $DOCKER_HOST_DB -U postgres -p'
################################################################################

### LAN Only  ##################################################################
alias pi='ssh pi@192.168.1.26'
alias dev='ssh alex@192.168.1.3'
################################################################################

alias python='python3'
alias ll='ls -l'
alias la='ls -a'
alias reload='source ~/.bashrc'
alias nalias='vim ~/.bashrc'
alias vimrc='vim ~/.vimrc'
alias gcssh='git clone ssh:git/'

### Functions ##################################################################
# Create a new python file
newpy() {
  if [ -z $1 ]
  then
    echo Usage : $  newpy \<filename\>
    return
  fi
  if [ -a $1 ]
  then
    echo $1 already exists
    return 
  fi
  touch $1
  chmod +x $1 
  VAR=#!
  PY=$(which python)
  PY=$VAR$PY
  echo $PY >> $1
}

# Create a new perl file
newpl() {
  if [ -z $1 ]
  then
    echo Usage :  $ newpl \<filename\>
    return
  fi
  if [ -a $1 ]
  then
    echo $1 already exists
    return 
  fi
  touch $1
  chmod +x $1 
  VAR=#!
  PL=$(which perl)
  PL=$VAR$PL
  echo $PL >> $1
}

################################################################################
