FROM n8nio/n8n:latest

# Optional: copy local workflows into container
COPY ./workflows /home/node/.n8n/workflows
COPY ./credentials.json /home/node/.n8n/credentials.json

# Set environment variables for credentials
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=yourusername
ENV N8N_BASIC_AUTH_PASSWORD=yourpassword
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
CMD ["n8n", "start"]