FROM debian:stable

# Install OpenSSH Server
RUN apt update
RUN apt install -y openssh-server

# Create SSH runtime folder
RUN mkdir -p /var/run/sshd

# Install dialog for setup process
RUN apt install -y dialog

# Add the entry point script
COPY ./scripts/* /usr/local/bin/

EXPOSE 22
CMD ["jackbox-start"]
