JAR_URL=https://launcher.mojang.com/v1/objects/a028f00e678ee5c6aef0e29656dca091b5df11c7/server.jar
MIN_MEM=1024M
MAX_MEM=4096M

if [ ! -d data ]; then
    mkdir data

    wget "$JAR_URL" -O data/server.jar

    echo "eula=true" > data/eula.txt

    echo "online-mode=false" > data/server.properties
fi

( cd data; java -Xms${MIN_MEM} -Xmx${MAX_MEM} -jar server.jar )
