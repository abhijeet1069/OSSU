# Security and Cryptography

## Entropy

How strong a password is?
Entropy is a measure of randomness.

Entropy = log2(#possibilities)

Coin flip entropy = log2(2) = 1 bit
Dice roll entropy = log2(6) = 2.6 bit

## Cryptographic Hash Function

Bytes can be any size, but output is fixed size.

shal(bytes) -> 160 bits

Properties of Hash function

- Non-Invertible
- Collision Resistant : Its hard to find 2 different inputs that produce the same output

## Key Derivation Function (KDF)

PBKDF2 (Password based key derivation function 2)

- slow : Used to slowdown password guessing by brute-force

## Encryption and Decryption

### Symetric key cryptography

Process:

- keygen() -> key
- encrypt(plaintext,key) - ciphertext
- decrypt(ciphertext,key) - plaintext

Correctness:

- given ciphertext, one can't figure out plain text without key
- decrypt(encrypt(m,k),k) = m

For ex : AES256

```zsh
# Encrypt
# Salt is a random number appended to password to make password hash difficult to crack
openssl aes-256-cbc -salt -in encrypt.png -out encrypt.enc.png

# Decrypt
openssl aes-256-cbc -d -in encrypt.enc.png -out encrypt1.png
```

### Asymetric key cryptography

Process

keygen() -> (public-key, private-key)
encrypt(p,public) -> cipher-text
decrypt(cipher-text, private-key) -> plain-text

#### Applications

##### E-Signature

sign(message, private-key) -> signature
verify(message, signature, public-key) -> true/false

##### Email Encryption

- PGP public key

##### End to end encrypted messages

##### Signing public software binary

Can be done via GIT

## Compare files

Compare two files byte by byte

```zsh
cmp hello.txt hello1.txt
```
