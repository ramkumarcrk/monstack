# monstack



# Project Title:
       Monitoring Stack setup with CentOS7.8 using Docker container

# Description:
       This repository files will help to deploy grafana,influxdb and telegraf stack on a local machine running with CentOS7.8
       It will show graphical notation of live CPU,Memory ,Ping latency,bandwidth usage and File system usage.

# Pre-Requisite:
       Make sure your base VM/Cloud Instance has internet connectivity to pull images from Docker hub and adequate space in the local filesystem
       Run all scrips as root user or add sudo as prefix
       Make sure git installed


# Getting Started:
        
       Please download and place it in your home folder from below git repository.
       step:
           $git clone https://github.com/ramkumarcrk/monstack.git

# Setting Up Monitoring Stack:
       Please run the below commands
       $cd monstack
       $sudo ./install.sh
       vault_password will share via email

# Note:
       If the playbook  failed with an error message at task "Compose File Configuration and installation" , Please re-run the above command

# Latency/Bandwidth Test:
       Please copy and paste below command for Latency simulation , it will keep changing latency every minute for 4 different levels only
       $sudo /usr/bin/ansible-playbook  latency_add.yml

       Please copy and paste below command for Bandwidth simulation.Before that make sure your downloading a big file from the same local machine. it will trigger a       burst in your local machine bandwidth with 1m restriction
       $sudo /usr/bin/ansible-playbook bandwidth.yml

# Help:
       If above steps are followed carefully , there wont be any issues during stack provisioning.
       Accessing Monitoring Tools URL:
       * since VM guests ports are forwarded to host machine. So you can access all the below links via host machine browser
                              http://localhost:8086         -       URL for InfluxDB
                              http://localhost:3000         -       URL for Grafana
       Note: Please replace localhost with your Public IP or Appropriate IP address
						
       Accessing Grafana dashboard.
       Grafana credentials are below
                    username: admin
                    password: admin
       After sign in , skip if you dont want to change password
                                

        
# Author:
       Thanks to Opensource community and github :)
