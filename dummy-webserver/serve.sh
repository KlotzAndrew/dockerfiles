#! /bin/sh

port=${PORT:-3000}

echo "starting on port $port"
while true; do printf "HTTP/1.1 200 OK\n\n ready: %s\n" "$(date)" | nc -l -p "$port" -q 1; done
