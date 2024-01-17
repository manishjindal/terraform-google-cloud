1 Tenannt Isolation
2 Identity Management
3 Network Isolation
4 Resource Isolation
5 Logging and Monitoring
6 Authn & Authz
7 Configuration and Automation
    - config sync
    - Namespace and Inheritance
    - policy controller

 - Host Isolation
    - Sandbox (gVisor)




## Configuration and Automation
- All in one example: https://cloud.google.com/anthos-config-management/docs/tutorials/manage-resources-config-controller 

https://cloud.google.com/anthos-config-management/docs/concepts/config-controller-overview

Config Controller is a hosted version of Config Connector that simplifies installation and maintenance.
Config Controller also includes Policy Controller and Config Sync.

With Config Controller, you can create configurations for any Google Cloud resource. The configurations for these resources are stored in a source of truth like a Git repository. 

Config Sync continuously monitors your resources to ensure the current states of resources matches the state that you define in your source of truth. 

Policy Controller can catch and enforce policy violations on those resources before they are deployed. 


Config Sync:
- https://cloud.google.com/anthos-config-management/docs/config-sync-overview
