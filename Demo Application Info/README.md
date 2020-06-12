# Application Deployment Information 

The application I used for this demo was an application I wrote because coding stuff and things makes me happy. The application repository can be found here - [Hashi-Demo-App](https://github.com/codyde/hashi-demo-app). Below are some rough ideas around how I deploy this application for demos. 

## Kubernetes 

Kubernetes is by far the easiest path to deploy the repository has a kubernetes-demoapp.yaml file that you can apply to get up and running quickly. Pay special mind to the annotations for Consul Connect settings within. 

## Virtual Machine 

This is where things get a bit tricky... 

### Frontend 

The frontend service is running an Angular based application hosted on an nginx server. In order to get up and running you'll need to do the following (All of this can be seen in the Dockerfile in the `frontend-tier` directory)

* Clone the application repository (https://github.com/codyde/hashi-demo-app)
* Install Nginx 
* Leverage the Nginx configuration file (for the reverse proxy) in the `hashi-demo-app/frontend-tier/nginx/default.conf` directory as the Nginx configuration (remembering to remove any existing configuration entries from the default nginx configuration. *Hint: Remove the sites-available line from the `/etc/nginx/nginx.conf` file)
* Compile the application somewhere using `npm i && npm build`
* Copy the resulting files to the `/usr/share/nginx/html` directory on the Nginx server
* Restart nginx or issue a `sudo nginx -s reload` command to restart

### API Tier 

The api tier is a python Flask based application. You can either run this using Nomad to schedule it (execution command of `python3 main.py`), creating a systemd service, or manually just running the file directly 

### DB Tier 

Use the Docker container. Seriously. It's just easier. 