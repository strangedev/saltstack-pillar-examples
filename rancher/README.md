# Rancher Pillar

This pillar is used for configuring the deployment of rancher server and agents.

## `ports.http`: String

The port rancher will use to expose it's web interface over http.

## `ports.https`: String

The port rancher will use to expose it's web interface over https.

## `use-letsencrypt`: Bool

If this is set to `True`, an SSL certificate will be requested from
LetsEncrypt during the server bootstrap. For this to work, the `domain-name` 
value has to be set to a domain which resolves to the rancher server's IP
address.  

## `volume-name`: String

Name of the named docker volume used for persisting the rancher server's data.

## `domain-name`: String

The domain name where the rancher server will be available.
If `use-letsencrypt` is `True`, this domain will be used when requesting an
SSL certificate. If you're not using LetsEncrypt, enter the IP address of the
rancher server here, as this value will be used when new nodes try to discover
the rancher server.

## `version`: String

The version of rancher that will be deployed. Use the image tag of the rancher
docker image here.
