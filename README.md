# Consul 1.8 Beta Announcement Demo 

This set of assets represents a dual site configuration that we used for the Consul 1.8 beta demo's.

## Environment 

The environment that was setup spanned both Amazon Web Services and Microsoft Azure. 

### AWS Side (Primary)

* Server 1 - Primary Consul Server and Frontend application server (based on my [Hashi-Demo-App](https://github.com/codyde/hashi-demo-app))
* Server 2 - Primary Environment Mesh Gateway leveraging WAN Federation over Mesh Gateways to the secndary datacenter in Microsoft Azure
* Server 3 - Ingress Gateway providing access inbound to the environment - specifically the frontend service 
* Server 4 - A secondary instance of the Frontend web server

### Azure Side (Secondary)

* Server 2 - Secondary Consul Server and API server or application (based on my [Hashi-Demo-App](https://github.com/codyde/hashi-demo-app))
* Server 2 - Secondary Environment Mesh Gateway connecting to the primary environment in AWS leveraging WAN Federation over Mesh Gateways 
* Server 3 - Terminating Gatway providing access to an external managed postgres database in Microsoft Azure. External serice registered against this node, and the terminating gateway functioning here as well

## Notes

* The code samples here are purely for reference examples and not meant to be a step by step guide for implementation. 

