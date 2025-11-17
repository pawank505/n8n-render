# Use official n8n image
FROM n8nio/n8n:latest

# Disable permissions enforcement on Render (causes build failures)
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=false

# Use SQLite DB inside /data
ENV DB_TYPE=sqlite
ENV DB_TABLE_PREFIX=n8n_
ENV N8N_PATH=/data
ENV EXECUTIONS_PROCESS=main

# Create persistent folder
RUN mkdir -p /data
VOLUME /data

# Start n8n normally
CMD ["n8n"]
