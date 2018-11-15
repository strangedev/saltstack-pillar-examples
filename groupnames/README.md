# Groupnames Pillar

This pillar is a mpping of OS names to group names.
This is used in conjunction with the `users` pillar to automatically assign
users to the correct groups, regardless of distro.

## `groupnames`: Mapping of Mapping of Strings

A mapping of generic group names to distribution-specific group names.
Whenever a group name is used in a state, the state will do a lookup
using this mapping and use the appropriate group name, if the mapping
specifies it.
