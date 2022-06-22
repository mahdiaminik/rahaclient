set -x
sshpass -p $SSH_PASSWORD ssh -N \
    -p $((RAHA_ST+20000)) \
    -o "StrictHostKeyChecking no" \
    -o ServerAliveInterval=60 \
    -R 0.0.0.0:222:host.docker.internal:22 \
    $SSH_USER@$SSH_SERVER