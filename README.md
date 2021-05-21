# Open-Scap Container
 
Containerized Open-Scap and Open-Scap-Utils with Scap-Security-Guide

## Running Against Remote Hosts
Currently manual but will be automated process. 

Start and connect to the container on your machine. 
```
docker run -v ~<Path to pem file>:/tmp/<Pem file name> -v $(pwd)/results:/tmp/results -it amazonscap bash
```

Start the ssh-agent. 
```
eval `ssh-agent -s`
```
Add the ssh key so you can initiate secure connection. 
```
ssh-add /tmp/<Pem file name>
```
Initate open-scap scan from container. 
```
oscap-ssh --sudo <username>@<IP-Address> 22 xccdf eval --profile xccdf_org.ssgproject.content_profile_standard --report /tmp/results/report.html --fetch-remote-resource ./src/scap-content/scap-security-guide-0.1.55-oval-5.10/ssg-centos7-ds-1.2.xml
```

