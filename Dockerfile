# Mobocker
FROM alpine

COPY --chmod=0755 infinite.sh /infinite.sh

CMD ["/bin/sh", "/infinite.sh"]
