# create a private key
openssl genrsa -out client.key

# create a csr with private key
# subj must be start with "/"
openssl req -new -key ${client.key} -out ${client.csr} -subj "/CN=localhost"

# sign a csr with ca 
openssl x509 -req -days 365 -in ${client.csr} -CA {ca.crt} -CAkey {ca.key} -out {client.crt} -CAcreateserial
