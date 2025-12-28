FROM n8nio/n8n:latest

USER root

RUN apk add --no-cache ffmpeg python3 py3-pip curl wget git

USER node

ENV NODES_EXCLUDE=[]
ENV N8N_BLOCK_ENV_ACCESS_IN_NODE=false
ENV N8N_COMMUNITY_PACKAGES_ALLOW_TOOL_USAGE=true

EXPOSE 5678

CMD ["n8n"]
