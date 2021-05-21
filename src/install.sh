#!/bin/bash

yum install -y open-ssh-server openssh-clients scap-security-guide openscap-utils wget unzip;
mkdir -p src/scap-content;
cd src/scap-content;
wget https://github.com/ComplianceAsCode/content/releases/download/v0.1.55/scap-security-guide-0.1.55-oval-510.zip ;

