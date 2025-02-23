#!/bin/bash

# Create the plugins folder if it doesn't exist
mkdir -p plugins

# Download Hibernate plugin if it doesn't exist
if [ ! -f "plugins/Hibernate-2.1.0.jar" ]; then
    echo "Downloading Hibernate plugin..."
    curl -L -o plugins/Hibernate-2.1.0.jar "https://github.com/itzrizzler/hibernate/raw/refs/heads/main/Hibernate-2.1.0.jar"
    chmod 444 plugins/Hibernate-2.1.0.jar
fi

# Start the Minecraft server
echo "Starting Minecraft server..."
exec java -Xms128M -Xmx${SERVER_MEMORY}M -jar ${SERVER_JARFILE} --nogui
