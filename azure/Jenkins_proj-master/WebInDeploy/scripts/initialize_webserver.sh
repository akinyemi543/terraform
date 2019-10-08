#!/bin/bash
apt-get update
apt-get update
apt install docker.io python3-pip build-essential libssl-dev libffi-dev -y --force-yes
pip3 install docker-compose
cd /var/tmp
echo "version: '3'" > docker-compose.yml
echo "services:" >> docker-compose.yml
echo "  jenkins:" >> docker-compose.yml
echo "    image: pglynn/jenkins:latest" >> docker-compose.yml
echo "    environment:" >> docker-compose.yml
echo "      JAVA_OPTS: \"-Djava.awt.headless=true\"" >> docker-compose.yml
echo "      JAVA_OPTS: \"-Djenkins.install.runSetupWizard=false\"" >> docker-compose.yml
echo "    ports:" >> docker-compose.yml
echo "      - \"50000:50000\"" >> docker-compose.yml
echo "      - \"8080:8080\"" >> docker-compose.yml
docker-compose up -d
sudo wget -O install_twistlock_defender.sh https://raw.githubusercontent.com/wwce/terraform/twistlck/aws/Jenkins_proj-master/WebInDeploy/scripts/install_twistlock_defender.sh
sudo chmod 755 install_twistlock_defender.sh
sudo bash ./install_twistlock_defender.sh 40.117.142.180 eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyIjoicGFuYWRtaW4iLCJyb2xlIjoiYWRtaW4iLCJncm91cHMiOm51bGwsInByb2plY3RzIjpudWxsLCJzZXNzaW9uVGltZW91dFNlYyI6ODY0MDAsImV4cCI6MTU3MDYzMjI0MywiaXNzIjoidHdpc3Rsb2NrIn0.XnvYPh5OywyMfOatYAN14zfe_6npSmD_2RSyPg3fEAA
