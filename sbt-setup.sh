# !/bin/bash -ex

apt update -y
apt upgrade -y
apt install curl -y

curl https://git.io/coursier-cli-"$(uname | tr LD ld)" -o cs
chmod +x cs
./cs setup --jvm 11 --apps sbt -y
