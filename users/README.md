# Users Pillar

Central point of configuration for user accounts.

## `users`: Mapping of Mapping of Strings

This mapping lists all users. To add a user, add their username here.
Optional configuration may be included for a user:

- fullname: The user's full name

## `alumni`: List of Strings

A list of usernames of users, who should not have a account anymore. Users listed here will be removed and all of their data will be purged.

## `groups`: Mapping of Lists of Strings

A mapping of generic group names (see groupnames pillar) to members of the group.
To ensure a group exists, list it here. To add a user to a group, add them as an
item to the group.
  