# Docker pillar

## `docker`

Top-level pillar name everything related to docker.

### `docker.version`: String

The desired docker version which is installed by the `docker` state.
The exact version identifier will differ by distro, so be sure to
provide a the correct version for each distro in use, by using templates.

### `docker.backlist-versions`: List of Strings

Here you can list docker version which should explicitely be uninstalled
when applying the `docker` state. This is useful for clearing previous docker
installations when downgrading.
