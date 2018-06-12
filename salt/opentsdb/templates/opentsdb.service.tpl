[Unit]
Description=opentsdb

[Service]
Type=simple
ExecStartPre=/opt/pnda/utils/register-service.sh opentsdb-internal 4242
ExecStart={{ home }}/start.sh
Restart=always
RestartSec=2

[Install]
WantedBy=multi-user.target
