# Use latest alpine image as base
FROM alpine:latest

# Copy needed stuff into container
COPY LICENSE README.md /
COPY entrypoint.sh /entrypoint.sh

# Install some packages
RUN apk add jq bash git go
RUN apk add --no-cache --upgrade grep

# Start action
ENTRYPOINT ["/entrypoint.sh"]