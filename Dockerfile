FROM n8nio/n8n:latest

# Use SQLite for free tier storage
ENV DB_TYPE=sqlite
ENV DB_TABLE_PREFIX=n8n_

# Save data inside /data
ENV N8N_PATH=/data
VOLUME /data

CMD ["n8n"]
