FROM alpine:latest

# Install OpenSSH
RUN apk add openssh

# Generate keys and disallow password-based authentication
RUN ssh-keygen -A
RUN sed -i 's/^#PasswordAuthentication\ yes/PasswordAuthentication\ no/' /etc/ssh/sshd_config

# Add the entry point script
COPY scripts/entry_point.sh /usr/local/bin/

EXPOSE 22
ENTRYPOINT ["entry_point.sh"]
CMD ["/usr/sbin/sshd", "-D"]
