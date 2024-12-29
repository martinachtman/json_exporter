#!/bin/sh

# Replace placeholders in config.yml with environment variables
envsubst < /config-with-env.yml > /tmp/processed_config.yml

# Start json_exporter with the processed config
# exec json_exporter --config.file=/tmp/processed_config.yml
exec json_exporter /tmp/processed_config.yml

