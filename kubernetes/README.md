# Kubernetes pillar

## `kubernetes`

Top-level pillar name for everything related to kubernetes.

### `kubernetes.package_name`: String

Name of the kubernetes package. The exact identifier will differ from OS to OS,
so be sure to provide the correct version for each OS by using templates.

### `kubernetes.version`: String

The desired kubernetes version which is installed by the `kubernetes` state.

### `kubernetes.repository`: Object

Some OSs require an additional repository in order to install kubernetes.
If `kubernetes.repository` is `False`, no repository will be added.
The exact values will differ from OS to OS, so be sure to provide 
the correct values for each OS by using templates.

#### `kubernetes.repository.name`: String

Name of the repository.

#### `kubernetes.repository.key_url`: String

URL to the GPG key (or similar) for the repository.