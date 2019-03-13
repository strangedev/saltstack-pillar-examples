ceph:
  {% if grains['os'] == 'Ubuntu' or grains['os'] == 'Debian' %}
  package_name: ceph
  
  repository:
    name: deb https://download.ceph.com/debian-luminous/ {{ grains['sb_distrib_codename'] }} main
    key_url: https://download.ceph.com/keys/release.asc
  {% endif %}