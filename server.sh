trap "kill 0" EXIT

PORT="${1:-8080}"

python3 "$(dirname $0)/"server.py "$PORT" & ngrok http "$PORT"

