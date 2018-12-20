# Packagenames Pillar

This pillar is a mpping of OS names to package names.
This is used in conjunction with all kinds of states to resolve
package names based on the minion's distro.

## `packagenames`: Mapping of Mapping of Strings

A mapping of generic package names to distribution-specific package names.
Whenever a package name is used in a state, the state should do a lookup
using this mapping and use the appropriate package name, if the mapping
specifies it.
