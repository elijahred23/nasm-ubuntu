# Use a lightweight Ubuntu image
FROM ubuntu:latest

WORKDIR /programs/assembly-programs
# Update package lists
RUN apt-get update

# Install NASM
RUN apt-get install -y nasm
RUN apt-get install -y vim
RUN apt-get install -y binutils
COPY assembly-programs/ .
CMD ["/bin/bash"]  