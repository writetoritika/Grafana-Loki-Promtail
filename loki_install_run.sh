# Download Loki Config

wget https://raw.githubusercontent.com/grafana/loki/v2.8.0/cmd/loki/loki-local-config.yaml -O loki-config.yaml

# moving files to grafana_configs directory 

mv loki-config.yaml grafana_configs/

# Run Loki Docker container

docker run -d --name loki -v $(pwd)/grafana_configs/:/mnt/config -p 3100:3100 grafana/loki:2.8.0 --config.file=/mnt/config/loki-config.yaml
