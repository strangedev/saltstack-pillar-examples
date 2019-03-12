# Kubernetes pillar

## `kubernetes`

Top-level pillar name for everything related to docker.

### `docker.package_name`: String

Name of the docker package. The exact identifier will differ from OS to OS,
so be sure to provide the correct version for each OS by using templates.

### `docker.version`: String

The desired docker version which is installed by the `docker` state.

### `docker.repository`: Object

Some OSs require an additional repository in order to install docker.
If `docker.repository` is `False`, no repository will be added.
The exact values will differ from OS to OS, so be sure to provide 
the correct values for each OS by using templates.

#### `docker.repository.name`: String

Name of the repository.

#### `docker.repository.key_url`: String

URL to the GPG key (or similar) for the repository.