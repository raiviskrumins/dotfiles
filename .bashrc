export PATH=$PATH:.

export NVM_DIR="/Users/curtislagraff/.nvm"

# Node Version Manager
NVM_DIR=~/.nvm
NVM_ENV_DIR=$(brew --prefix nvm)

if [ -s $NVM_ENV_DIR/nvm.sh ]
then
    source $NVM_ENV_DIR/nvm.sh
fi
