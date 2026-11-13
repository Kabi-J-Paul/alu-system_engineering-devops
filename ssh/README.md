# SSH scripts

Scripts for the SSH project.

- `0-use_a_private_key` - logs in to the server with the private key
  stored at `~/.ssh/school`, as the `ubuntu` user.
- `1-create_ssh_key_pair` - creates a 4096-bit RSA key pair named
  `school`, protected by the passphrase `betty`.

Run them from this directory:

    ./0-use_a_private_key    # connect to the server, exit to leave
    ./1-create_ssh_key_pair  # generate school / school.pub here

The generated keys are ignored by git and must never be committed.
