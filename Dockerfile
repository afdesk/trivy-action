FROM ghcr.io/aquasecurity/trivy:0.30.4
COPY entrypoint.sh /
RUN apk --no-cache add bash curl
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
