@echo off

set JAVA_CMD="java"
set JAR_NAME="powernukkitx.jar"

%JAVA_CMD% -Dfile.encoding=UTF-8 ^
    -Djansi.passthrough=true ^
    -Dterminal.ansi=true ^
    -XX:+UseZGC ^
    -XX:+ZGenerational ^
    -XX:+UseStringDeduplication ^
    --add-opens java.base/java.lang=ALL-UNNAMED ^
    --add-opens java.base/java.io=ALL-UNNAMED ^
    --add-opens java.base/java.net=ALL-UNNAMED ^
    -cp %JAR_NAME%;./libs/* ^
    cn.nukkit.Nukkit
