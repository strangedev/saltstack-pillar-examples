# Ceph pillar

## `ceph`

Top-level pillar name everything related to ceph.

### `ceph.package_name`: String

Name of the ceph package. The exact identifier will differ from OS to OS,
so be sure to provide the correct version for each OS by using templates.

### `ceph.repository`: Object

Some OSs require an additional repository in order to install ceph.
If `ceph.repository` is `False`, no repository will be added.
The exact values will differ from OS to OS, so be sure to provide 
the correct values for each OS by using templates.

#### `ceph.repository.name`: String

Name of the repository.

#### `ceph.repository.key_url`: String

URL to the GPG key (or similar) for the repository.