export PATH=/opt/homebrew/bin:$PATH
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
alias p="cd ~/code/prancer; ./tools/bin/docker-build.sh --stop --gateway --db --fe"
alias g="cd ~/code/gateway; ./tools/bin/docker-build.sh --stop-all --db --fe"
alias pfe="cd ~/code/prancer/prancer_frontend; npm install && npm start"
alias gfe="cd ~/code/gateway/frontend; npm install && npm start"
alias slave="ssh ajenkins4gclinical.com@192.168.0.22"
alias gc="gh copilot"
alias gcs="gh copilot suggest"
alias gce="gh copilot explain"
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export VIMRUNTIME=/usr/local/share/nvim/runtime
