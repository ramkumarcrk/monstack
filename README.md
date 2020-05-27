# monstack



# Project Title:
       Monitoring Stack setup with CentOS7.8 using Docker container

# Description:
       This repository files will help to deploy grafana,influxdb and telegraf stack on a local machine running with CentOS7.8
       It will show graphical notation of live CPU,Memory ,Ping latency and File system usage.

# Pre-Requisite:
       Make sure your base VM/Cloud Instance has internet connectivity to pull images from Docker hub and adequate space in the local filesystem
       Run all scrips as root user or add sudo as prefix 


# Getting Started:
        
       Getting Files to local Machine:
       Please download and place it in your home folder from below git repository.
       step:
           $git clone https://github.com/ramkumarcrk/monstack.git

# Executing program:
       * $cd monstack
       * $sudo ./install.sh

# Note:
       If the playbook  failed with an error message at task "Compose File Configuration and installation" , Please re-run the above command
 

# Help:
       If above steps are followed carefully , there wont be any issues during stack provisioning.
       Accessing Monitoring Tools URL:
       * since VM guests ports are forwarded to host machine. So you can access all the below links via host machine browser
                             * http://localhost:8086         -       URL for InfluxDB
                             * http://localhost:3000         -       URL for Grafana
       Note: Please replace localhost with your Public IP or Appropriate IP address
						
       Accessing Grafana dashboard.
       Grafana credentials are below
                    username: admin
                    password: admin
       After sign in , skip if you dont want to change password
                                

# Rollback:
       Execute below step in host machine to delete the monitoring stack setup:
       $ 
                      
        
# Author:
       Thanks to Opensource community and github :)

