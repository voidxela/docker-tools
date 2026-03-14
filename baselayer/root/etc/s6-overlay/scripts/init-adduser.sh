#!/bin/bash
TARGET_PUID=${PUID:-1000}
TARGET_PGID=${PGID:-1000}
TARGET_USERNAME=${USERNAME:-user}

echo "[init-adduser] Configuring '$USERNAME' user with PUID=$TARGET_PUID and PGID=$TARGET_PGID"
if ! getent group "$USERNAME" >/dev/null; then
    groupadd -g "$TARGET_PGID" "$USERNAME"
else
    groupmod -g "$TARGET_PGID" "$USERNAME"
fi
if ! getent passwd "$USERNAME" >/dev/null; then
    useradd -u "$TARGET_PUID" -g "$TARGET_PGID" -m -s /bin/bash "$USERNAME"
else
    usermod -u "$TARGET_PUID" -g "$TARGET_PGID" "$USERNAME"
fi
mkdir -p /workspace
chown -R "$USERNAME:$USERNAME" /workspace
echo "[init-adduser] User configuration complete."