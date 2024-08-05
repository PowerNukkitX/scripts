#!/bin/bash

echo "PowerNukkitX server software for Minecraft: Bedrock Edition"

# Check if Java is installed
if ! java -version &> /dev/null
then
    echo "Java is not installed. Please install Java 21 or higher."
    echo "You can refer to the installation instructions at https://docs-pnx.pages.dev/requirements"
    exit 1
fi

# Check if powernukkitx.jar exists
if [ ! -f "powernukkitx.jar" ]; then
    echo "PowerNukkitX.jar not found"
    echo "You can download the file from https://github.com/PowerNukkitX/PowerNukkitX/releases"
    exit 1
fi

# Check if libs directory exists
if [ ! -d "libs" ]; then
    echo "The libs directory was not found. Please ensure the directory is in the current directory."
    echo "You can download the directory from https://github.com/PowerNukkitX/PowerNukkitX/releases"
    exit 1
fi

JAVA_CMD="java"
JAR_NAME="powernukkitx.jar"

$JAVA_CMD -Dfile.encoding=UTF-8 \
    -Djansi.passthrough=true \
    -Dterminal.ansi=true \
    -XX:+UseZGC \
    -XX:+ZGenerational \
    -XX:+UseStringDeduplication \
    --add-opens java.base/java.lang=ALL-UNNAMED \
    --add-opens java.base/java.io=ALL-UNNAMED \
    --add-opens java.base/java.net=ALL-UNNAMED \
    -cp $JAR_NAME:./libs/* \
    cn.nukkit.PowerNukkitX