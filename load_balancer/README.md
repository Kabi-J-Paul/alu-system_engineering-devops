# Load balancer scripts

Scripts for the Load balancer project. The configuration scripts set up
a brand new Ubuntu machine and can be re-run safely on a server that is
already configured.

- `0-custom_http_response_header` - installs nginx and makes every
  response carry an `X-Served-By` header whose value is the hostname of
  the server, so we can see which web server answered a request.
- `1-install_load_balancer` - installs HAProxy and configures it to
  distribute requests between `web-01` and `web-02` using the
  roundrobin algorithm.

The configuration scripts must be run as root:

    sudo ./0-custom_http_response_header
    sudo ./1-install_load_balancer

Check the header on both web servers:

    curl -sI 13.135.102.185 | grep X-Served-By   # X-Served-By: 7308-web-01
    curl -sI 35.179.186.89 | grep X-Served-By    # X-Served-By: 7308-web-02

Check that the load balancer alternates between them (run twice):

    curl -sI 35.177.216.237 | grep X-Served-By
