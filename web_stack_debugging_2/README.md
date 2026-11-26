# Web stack debugging #2

Bash scripts for the Web stack debugging #2 project.

## Files

- `0-iamsomeoneelse` - runs `whoami` as the user passed as the first
  argument.
- `1-run_nginx_as_nginx` - configures Nginx to run as the `nginx` user
  and listen on all active IPs on port 8080.

## Usage

    sudo ./0-iamsomeoneelse www-data
    sudo ./1-run_nginx_as_nginx
