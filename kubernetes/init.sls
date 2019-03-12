kubernetes:
  {% if grains['os'] == 'Debian' %}
  repository:
  {% if grains['lsb_distrib_release'].startswith("9") %}
    - name: deb https://apt.kubernetes.io/ kubernetes-xenial main
  {% endif %}
  
  {% else %}
  repository: False
  {% endif %}

  key_url: https://packages.cloud.google.com/apt/doc/apt-key.gpg

  version: '1.13.*'