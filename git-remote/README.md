# Git-remote Pillar

This pillar is used for setting up a git user, called `git`, who can be used
to access git repositories as remotes from outside the host.

This does not currently set up any repositories, but only controls ssh
access to them.

### `git-users`: List of Strings

A list of usernames. The users listed here are able to push to remotes
set up by the `git` user, using their ssh keys. Appropriately named
ssh keys have to be present in the `saltstack-data`, in order for this to
work.
