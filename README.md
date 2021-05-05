## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

![alt text](https://github.com/babbyjaso/ELK_Stack_urban_broccoli/blob/main/Diagrams/Jason%20Nichols%20Unit%2012%20HW.png "Architecture Diagram")

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the playbook.yml file may be used to install only certain pieces of it, such as Filebeat.

This document contains the following details:
- Description of the Topology
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be available even through DDoS attacks, in addition to restricting access to the network.

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the logs and system metrics.

The configuration details of each machine may be found below.

| Name     | Function   | Public IP      | Private IP | Operating System |
|----------|------------|----------------|------------|------------------|
| Jump Box | Gateway    | 40.124.142.209 | 10.0.0.4   | Linux            |
| Web-1    | Web Server | NA             | 10.0.0.5   | Linux            |
| Web-2    | Web Server | NA             | 10.0.0.6   | Linux            |
| Web-3    | Web Server | NA             | 10.0.0.7   | Linux            |
| ELK-Box  | ELK Server | 52.151.195.102 | 10.1.0.4   | Linux            |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the Jump Box machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
- 99.159.81.137

Machines within the network can only be accessed by Jump Box.

A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible | Allowed IP Address |
|----------|---------------------|--------------------|
| Jump Box | Yes                 | 99.159.81.137      |
| Web-1    | No                  | 10.0.0.4           |
| Web-2    | No                  | 10.0.0.4           |
| Web-3    | No                  | 10.0.0.4           |
| ELK Box  | Yes                 | 99.159.81.137      |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because it is easily scaleable.

The playbook implements the following tasks:
- Install Docker
- Image the ELK machine in Docker
- Forward ports to the ELK machine
- Enable Docker on start up

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

![alt text](https://github.com/babbyjaso/ELK_Stack_urban_broccoli/blob/main/Images/elk_playbook_success.png "Successful Installation") 

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- 10.0.0.5
- 10.0.0.6
- 10.0.0.7

We have installed the following Beats on these machines:
- Filebeat
- Metricbeat

These Beats allow us to collect the following information from each machine:
-Logs such as Windows logs, error logs and system logs
-Metrics about the servers such as CPU and Memory usage

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the elk.yml file (or use wget) to /etc/ansible in the Ansible Docker in the Jump Box.
- Update the hosts filels
 to include the IPs of the ELK box machine under a new group "[elk]"
- Run the playbook, and navigate to http://52.151.195.102:5601 to check that the installation worked as expected.