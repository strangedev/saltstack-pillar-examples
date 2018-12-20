rancher:
  ports:
    http: 8080
    https: 8443
  use-letsencrypt: False
  volume-name: rancher-server
  domain-name: something.invalid
  version: latest
