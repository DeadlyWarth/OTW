#!/bin/bash

# Your current password
PASSWORD="kSkvUpMQ7lBYyCM4GBPvCvT1BfWRy0Dx"

# The ports you found with nmap
PORTS="31046 31518 31691 31790 31960"

# Loop through each port
for PORT in $PORTS
do
    echo "Trying port $PORT..."

    # Attempt to connect with openssl (for SSL/TLS)
    # The timeout prevents the script from hanging on an open port that doesn't respond
    # 2>/dev/null suppresses the error messages from failed connections
    OUTPUT=$(echo $PASSWORD | timeout 2 openssl s_client -quiet -connect localhost:$PORT 2>/dev/null)

    # Check if the output is not empty and not the password itself
    if [ ! -z "$OUTPUT" ] && [ "$OUTPUT" != "$PASSWORD" ]; then
        echo "Found the password on port $PORT (SSL/TLS):"
        echo "$OUTPUT"
        exit 0
    fi

    # If openssl failed, try with nc (for plain text)
    OUTPUT=$(echo $PASSWORD | timeout 2 nc localhost $PORT 2>/dev/null)

    # Check if the output is not empty and not the password itself
    if [ ! -z "$OUTPUT" ] && [ "$OUTPUT" != "$PASSWORD" ]; then
        echo "Found the password on port $PORT (non-SSL/TLS):"
        echo "$OUTPUT"
        exit 0
    fi
done

echo "No password found on any of the ports."
