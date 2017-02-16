#!/bin/bash

gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
curl -L https://get.rvm.io | bash -s stable --ruby --autolibs=read-only &&
source ~/.rvm/scripts/rvm &&
rvm requirements &&
rvm install 2.3.1 &&
rvm use 2.3.1 --default &&
rvm rubygems current &&
rvm @global do gem install bundle --no-ri &&
ssh-keygen &&
cat ~/.ssh/id_rsa.pub
