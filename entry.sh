#!/bin/sh
#

set -e
ENV_FILE="/tmp/env_vars.txt"

# Check if the file exists
if [ -f "$ENV_FILE" ]; then
    # Read the file line by line
    while IFS= read -r line; do
        # Skip empty lines and lines starting with #
        if [ -n "$line" ] && ! echo "$line" | grep -q '^#'; then
            # Split the line into key and value
            key=$(echo "$line" | cut -d '=' -f 1)
            value=$(echo "$line" | cut -d '=' -f 2-)

            # Export the variable
            export "$key"="$value"
        fi
    done < "$ENV_FILE"
else
    echo "Error: env file not found: $ENV_FILE" >&2
    exit 1
fi


# Run your java or NodeJs application
java ${JAVA_ARGS} -jar demoapp.jar

#(OR)

npm run start