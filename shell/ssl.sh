# create a private key
openssl genrsa -out client.key

# create a csr with private key
# subj must be start with "/"
openssl req -key ${client.key} -out ${client.csr} -subj "/CN=localhost"
