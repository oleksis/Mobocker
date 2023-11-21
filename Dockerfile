# syntax=docker/dockerfile:1
# Mobocker
FROM alpine
LABEL maintainer="Oleksis Fraga <oleksis.fraga at gmail.com>"
LABEL org.opencontainers.image.source=https://github.com/oleksis/Mobocker
LABEL org.opencontainers.image.description="Mobocker"
LABEL org.opencontainers.image.licenses=MIT

# Run tail -f /dev/null to keep the container running
CMD ["tail", "-f", "/dev/null"]
