FROM homeassistant/home-assistant:2021.9

RUN apk add dbus  ; \
    mkdir -p /var/run/dbus

# Add services
COPY s6-services/  /etc/services.d/

# Ensure bluetoothd is SIGKILL'ed on host

