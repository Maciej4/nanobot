echo "compiling"
javac -classpath /home/pi/falcon/api-java-5.18.3.jar Example.java
echo "running"
LD_LIBRARY_PATH="$LD_LIBRARY_PATH:./lib/" LD_PRELOAD="./lib/libCTRE_PhoenixPlatform_socketcan.so ./lib/libCTRE_PhoenixCanutils.so" java -Xcomp -Xmx128M -XX:+UseG1GC -XX:MaxGCPauseMillis=10 -XX:InitiatingHeapOccupancyPercent=50 -cp ".:api-java-5.18.3.jar" Example
