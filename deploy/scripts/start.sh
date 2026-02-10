#!/bin/bash
set -e
cd /home/ec2-user/Project-G7

# create env if missing (optional)
if [ ! -f .env ]; then
cat <<EOF > .env
PORT=3000
API_KEY=changeme-ite501
DATA_FILE=./data/db.json
EOF
fi

nohup npm start > app.log 2>&1 &
sleep 2