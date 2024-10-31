# Use the official Jellyfin Docker image from the Jellyfin team
FROM jellyfin/jellyfin:latest

# Set environment variables
ENV JELLYFIN_PERSISTENT_STORAGE="/config"

# Expose necessary ports
# 8096 is the default HTTP port for Jellyfin
# 8920 is the default HTTPS port
EXPOSE 8096
EXPOSE 8920

# If you have additional volumes for media storage
VOLUME /media
VOLUME /config

# Start Jellyfin when the container is run
CMD ["jellyfin"]