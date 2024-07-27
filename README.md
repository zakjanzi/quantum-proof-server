## Generating Post-Quantum Certificates with Docker

This repository provides a Docker image that automates the creation of a self-signed certificate authority (CA) and a server certificate using the Dilithium3 post-quantum algorithm.

### Prerequisites
* Docker

### Building the Image
1. Clone this repository and run


```bash
docker build -t cert-generator .
```

2. Navigate to the directory where you want to store the generated certificates and run the following command to execute the script within the Docker container:

```bash
docker run -v $(pwd):/opt/tmp cert-generator

```


* CA.key: Private key for the self-signed certificate authority.
* CA.crt: Certificate for the self-signed certificate authority.
* server.key: Private key for the server certificate.
* server.crt: Server certificate signed by the CA, using the Dilithium3 algorithm.

#### Note:

You can customize the script to modify parameters like the certificate subject information or the number of days for certificate validity. However, editing the script requires rebuilding the Docker image.


