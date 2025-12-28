FROM n8nio/n8n:latest

# Switch to root to install packages
USER root

# Install FFmpeg and other useful tools
RUN apk add --no-cache \
    ffmpeg \
    python3 \
    py3-pip \
    curl \
    wget \
    git

# Create necessary directories
RUN mkdir -p /home/node/.n8n

# Switch back to node user for security
USER node

# Set environment variables to enable all nodes
ENV NODES_EXCLUDE="[]"
ENV N8N_BLOCK_ENV_ACCESS_IN_NODE="false"
ENV N8N_COMMUNITY_PACKAGES_ALLOW_TOOL_USAGE="true"

# Expose port
EXPOSE 5678

# Start n8n
CMD ["n8n"]
