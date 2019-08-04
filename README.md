# ELS Cluster Demo

Elasticsearch & Kibana 7.3.0

### Setup:
- 3 Master Nodes
- 4 Data Nodes
- 2 Coordinator Nodes (exposing `9201` & `9202`)
- 1 Kibana (exposing `5601`)

### Start:
- run `docker-compose -f els.docker-compose.yml up -d`
- run `.\sample-data.sh`
- attach logs: run `docker-compose -f els.docker-compose.yml logs -f -t <componentName>`
- detach logs: press `Ctrl + z`
- open http://localhost:6501

### Stop:
- keep data: run `docker-compose -f els.docker-compose.yml down`
- remove data: run `docker-compose -f els.docker-compose.yml down -v`