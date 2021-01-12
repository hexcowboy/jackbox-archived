FROM alpine:latest

# Install OpenSSH
RUN apk add --no-cache --upgrade openssh

# Generate server keys
RUN ssh-keygen -A

# Add the entry point script
COPY scripts/setup /usr/local/bin/

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
