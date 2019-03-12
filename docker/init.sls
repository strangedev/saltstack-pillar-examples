docker:

  {% if grains['os'] == 'Ubuntu' or grains['os'] == 'Debian' %}
  package_name: docker-ce
  version: '18.06.*'
  {% endif %}

  # prerequisites
  {% if grains['os'] == 'Ubuntu' %}
  prerequisites:
    - apt-transport-https
    - ca-certificates
    - curl
    - software-properties-common
  {% elif grains['os'] == 'Debian' %}
  prerequisites:
    - apt-transport-https
    - ca-certificates
    - curl
    - software-properties-common
    - gnupg2
  {% else %}
  prerequisites: []
  {% endif %}

  # repository
  {% if grains['os'] == 'Ubuntu' %}
  repository:
    # name
    {% if grains['lsb_distrib_release'] == '18.04'%}
    name: deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable
    {% elif grains['lsb_distrib_release'] == '16.04' %}
    name: deb [arch=amd64] https://download.docker.com/linux/ubuntu xenial stable
    {% elif grains['lsb_distrib_release'] == '14.04' %}
    name: deb [arch=amd64] https://download.docker.com/linux/ubuntu trusty stable
    {% endif %}

    key_url: https://download.docker.com/linux/ubuntu/gpg
  {% elif grains['os'] == 'Debian' %}
  repository:
    # name
    {% if grains['lsb_distrib_release'].startswith("9") %}
    name: deb [arch=amd64] https://download.docker.com/linux/debian stretch stable
    {% endif %}

    key_url: https://download.docker.com/linux/debian/gpg
  {% else %}
  repository: False
  {% endif %}