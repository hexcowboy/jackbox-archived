FROM alpine:latest

# Install OpenSSH
RUN apk add --no-cache --upgrade openssh

# Generate server keys
RUN ssh-keygen -A

# Add the entry point script
COPY ./scripts/* /usr/local/bin/

RUN ls /usr/local/bin | grep up

EXPOSE 22
CMD ["jackbox-start"]
