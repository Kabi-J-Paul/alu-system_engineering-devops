# ALU system engineering and Devops

Projects for the System engineering and Devops track.

## SSH

Scripts for the SSH project live in the [`ssh/`](ssh/) directory.

### Files

- `0-use_a_private_key` - logs in to the assigned server with the
  private key stored at `~/.ssh/school`, as the `ubuntu` user.
- `1-create_ssh_key_pair` - creates a 4096-bit RSA key pair named
  `school`, protected by the passphrase `betty`. Running it writes
  `school` and `school.pub` in the current directory.
- `2-ssh_config` - SSH client configuration that uses the
  `~/.ssh/school` key and refuses password authentication.

### Usage

    cd ssh
    ./0-use_a_private_key    # connect to the server, type exit to leave
    ./1-create_ssh_key_pair  # generate the key pair in this directory

The keys created by the scripts are ignored by git and must never be
committed.

## Web server

Scripts and pages for the Web server project live in the
[`web_server/`](web_server/) directory.

### Files

- `0-transfer_file` - transfers a file to a server over `scp` with
  strict host key checking disabled.
- `1-install_nginx_web_server` - installs nginx on port 80 serving a
  page that contains `Holberton School`.
- `2-setup_a_domain_name` - the domain name set up for the project.
- `3-redirection` - configures `/redirect_me` to answer with a 301
  Moved Permanently.
- `4-not_found_page_404` - configures a custom 404 page containing
  `Ceci n'est pas une page`.
- `5-design_a_beautiful_404_page.html` - creative 404 page.

### Usage

    cd web_server
    sudo ./1-install_nginx_web_server   # run as root on the server
    sudo ./3-redirection
    sudo ./4-not_found_page_404
    ./0-transfer_file page.html 13.135.102.185 ubuntu ~/.ssh/school
