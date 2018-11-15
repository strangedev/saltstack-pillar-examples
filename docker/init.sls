docker:
  {% if grains['os'] == 'Ubuntu' %}
  {% if grains['lsb_distrib_release'] == '18.04' %}
  version: '18.06.1~ce~3-0~ubuntu'
  {% endif %}
  {% endif %}

  blacklist-versions:
    - 5:18.09.0~3-0~ubuntu-bionic