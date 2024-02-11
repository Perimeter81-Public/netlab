# Network Lab Challenge 1  

In this scenario you have 4 routers you administer (r1 -- r4) 


- Bring up OSPF Convergence between r1 and r2
- You have to solve for Ping not reachable between 
  - server1 -> h3
  - server1 -> h4
  - server2 -> h3
  - server2 -> h4
  - server1 -> server2

All of the configuration that needs to be fixed is in either r1 and/or r2. 
You can access all of the devices in the topology

In order to pass the challenge your solution need to pass the ``netlab validate`` test 
The ``netlab validate`` test will run a series of pings and validate the results

You can troubleshoot by connecting to the devices and making changes to the configuration
Run time changes can be test with the ``netlab validate`` command

Resolution should be a Pull Request to this repo with the changes you made to the topology.yaml or any other files needed



Successful Validation should look like this 
```bash


