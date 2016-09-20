#!/bin/bash

VERSION_RUBY=2.3.1

gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
curl -L https://get.rvm.io | bash -s stable --ruby &&
source ~/.rvm/scripts/rvm &&
rvm requirements &&
rvm install $VERSION_RUBY &&
rvm use $VERSION_RUBY --default &&
rvm rubygems current &&
ssh-keygen &&
cat ~/.ssh/id_rsa.pub
