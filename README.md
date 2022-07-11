# mysql2pgsql-docker
MySQLからPostgreSQLにDockerとpgloaderを使ってデータコンバートします。

### 説明
aptからpgloaderをインストールするとうまく動作しないのでDockerファイルでcloneしてます。（不格好だけど）

**セットアップ**

1. リポジトリをクローン

2. ダンプしたMySQLファイルをmigrationsフォルダに配置してサンプルファイルを削除

3. 実行 `docker-compose up -d` （マイグレーションしますのでデータが多い場合は待ってから4を実行）
   phpmyadminつけてるので`http://localhost:8000`で全部インポートされたか確認してからの方がいいかも

4. Dockerが起動したらバッチを実行 `./pgloader_migrate.sh` (実行権限無い場合は'chmod +x pgloader_migrate.sh')

**postgresデータのエクスポート**
```
# postgresにログイン
docker-compose exec postgres bash

# データベースのバックアップ
cd /tmp
pg_dump -U postgres -d postgres > database.dump

# expotフォルダにファイルが作成されます
```

