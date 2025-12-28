# n8n Custom Deployment

Custom n8n deployment with ALL nodes enabled including Execute Command, YouTube, and FFmpeg for video processing.

## What's Included

- ✅ All n8n nodes enabled (Execute Command, YouTube, etc.)
- ✅ FFmpeg pre-installed for video processing
- ✅ Python 3 for Python Code nodes
- ✅ curl, wget, git for additional functionality

## Deploy to Railway

This repository is configured to deploy automatically to Railway.

Railway will:
1. Detect the Dockerfile
2. Build the custom n8n image
3. Connect to your PostgreSQL database
4. Deploy with all nodes enabled

## Features

- All 400+ n8n nodes available
- Execute Command node enabled
- FFmpeg for video processing
- Community packages enabled
- PostgreSQL database support

## Environment Variables

The following environment variables are set automatically:

- `NODES_EXCLUDE=[]` - Enables all nodes
- `N8N_BLOCK_ENV_ACCESS_IN_NODE=false` - Allows env vars in Code node
- `N8N_COMMUNITY_PACKAGES_ALLOW_TOOL_USAGE=true` - Enables community nodes

## Usage

After deployment, access your n8n instance at your Railway-provided URL.

All workflows from your previous deployment will be available (they're stored in PostgreSQL).
