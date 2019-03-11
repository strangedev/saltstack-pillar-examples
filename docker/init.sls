docker:
  {% if grains['os'] == 'Ubuntu' or grains['os'] == 'Debian' %}
  version: '18.06.*'
  {% endif %}

  blacklist-versions:
    - 5:18.09.0~3-0~ubuntu-bionic