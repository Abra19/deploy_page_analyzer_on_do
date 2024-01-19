# deploy_page_analyzer_on_do

Works on DO - two server with LoadBalancer
HTTP only

## SET env
SECRET_KEY

DATABASE_URL

DIGITALOCEAN_TOKEN

## LoadBalancer settings

### Forwarding rules:
HTTP on port 80  HTTP on port 80
HTTPS on port 443  HTTPS on port 443

### Health checks 
tcp://0.0.0.0:80

### Sticky sessions 
Off

### SSL
No redirect

### Proxy protocol
Disabled

### Backend keepalive
Enabled

### HTTP Idle Timeout 
60