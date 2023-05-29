# Download Promtail Config

wget https://raw.githubusercontent.com/grafana/loki/v2.8.0/clients/cmd/promtail/promtail-docker-config.yaml -O promtail-config.yaml

# moving files to grafana_configs

mv promtail-config.yaml grafana_configs/

# Run Promtail Docker container

docker run -d --name promtail -v $(pwd)/grafana_configs/:/mnt/config -v /var/log:/var/log --link loki grafana/promtail:2.8.0 --config.file=/mnt/config/promtail-config.yaml
