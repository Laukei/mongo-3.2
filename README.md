# 32-bit Mongo 3.2 Docker image

A Dockerfile for building 32-bit Mongo 3.2 on 32-bit Debian Jessie, because I wanted to do some development and the only machine I could find had a 32-bit CPU. Mongo 3.2 is the last version of Mongo to support 32-bit architectures.

Implemented based on [the Mongo 3.2 docs](https://www.mongodb.com/docs/v3.2/tutorial/install-mongodb-on-linux/). Resulting image could be slimmed considerably and use a volume for storage.
