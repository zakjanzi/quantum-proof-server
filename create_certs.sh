#!/bin/bash

# Create a self-signed certificate authority
openssl req -x509 -new -newkey rsa -keyout CA.key -out CA.crt -nodes -subj "/CN= Zak's Post-Quantum CA" -days 365

# Create a server key using Dilithium3
openssl req -new -newkey dilithium3 -keyout server.key -out server.csr -nodes -subj "/CN=localhost" -addext "subjectAltName = DNS:localhost"

# Sign the server certificate
openssl x509 -req -in server.csr -out server.crt -CA CA.crt -CAkey CA.key -CAcreateserial -days 365 -copy_extensions copy
