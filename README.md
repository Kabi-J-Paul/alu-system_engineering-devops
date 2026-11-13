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

### Usage

    cd ssh
    ./0-use_a_private_key    # connect to the server, type exit to leave
    ./1-create_ssh_key_pair  # generate the key pair in this directory

The keys created by the scripts are ignored by git and must never be
committed.
