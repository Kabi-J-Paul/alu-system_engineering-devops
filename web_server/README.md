# Web server scripts

Scripts and pages for the Web server project. The configuration scripts
set up a brand new Ubuntu machine and can be re-run safely on a server
that is already configured.

- `0-transfer_file` - transfers a file to a server with `scp`, with
  strict host key checking disabled.
- `1-install_nginx_web_server` - installs nginx, listens on port 80 and
  serves a page containing `Holberton School`.
- `3-redirection` - nginx setup with `/redirect_me` answering 301
  Moved Permanently.
- `4-not_found_page_404` - nginx setup with a custom 404 page
  containing `Ceci n'est pas une page`.
- `5-design_a_beautiful_404_page.html` - creative 404 page served as
  the custom error page.

The configuration scripts must be run as root:

    sudo ./1-install_nginx_web_server
    sudo ./3-redirection
    sudo ./4-not_found_page_404

Transfer a file to the server with:

    ./0-transfer_file some_page.html 13.135.102.185 ubuntu ~/.ssh/school
