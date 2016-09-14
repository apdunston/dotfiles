# Path
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.3/bin:/usr/local/share/npm/bin:~/bin

# Always Bundle Exec
[ -f ~/.bundler-exec.sh ] && source ~/.bundler-exec.sh

#Riak/ulimit
ulimit -n 4048

export DEPLOY_AS=apdunston
eval "$(hub alias -s)"

# Ruby Env
eval "$(rbenv init -)"
