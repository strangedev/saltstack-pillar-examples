kubernetes:
  {% if grains['os'] == 'Debian' %}
  repository:
  {% if grains['lsb_distrib_release'].startswith("9") %}
    name: deb https://apt.kubernetes.io/ kubernetes-xenial main
    key_url: https://packages.cloud.google.com/apt/doc/apt-key.gpg
  {% endif %}
  
  {% elif grains['os'] == 'Ubuntu' %}
  repository:
  {% if grains['lsb_distrib_release'].startswith("18") %}
    name: deb https://apt.kubernetes.io/ kubernetes-xenial main
    key_url: https://packages.cloud.google.com/apt/doc/apt-key.gpg
  {% endif %}
 
  {% else %}
  repository: False
  {% endif %}

  version: '1.15.*'
