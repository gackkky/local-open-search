# local-open-search
ローカルで OpenSearch × [elasticsearch-sudachi](https://github.com/WorksApplications/elasticsearch-sudachi) を動かすためのリポジトリです。

## version
- OpenSearch: 2.13.0
- elasticsearch-sudachi: 3.1.0
- Docker Compose: v2.24.6-desktop.1

## Setup
2024-04-21 現在、elasticsearch-sudachi に OpenSearch 2.13.0 に対応するビルドが未リリース([Releases](https://github.com/WorksApplications/elasticsearch-sudachi/releases))のため、自前でビルドしたものを使用します。
sudachi のビルドには JDK が必要なので、事前にインストールしておいてください。

```
$ make setup
$ docker compose up -d
```
