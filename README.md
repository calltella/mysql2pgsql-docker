# mysql2pgsql-docker
MySQLからPostgreSQLにDockerとpgloaderを使ってデータコンバートします。

**セットアップ**

1. リポジトリをクローン

2. ダンプしたMySQLファイルをmigrationsフォルダに配置してサンプルファイルを削除

3. 実行 `docker-compose up -d` （マイグレーションしますのでデータが多い場合は待ってから4を実行）

4. Dockerが起動したらバッチを実行 `./pgloader_migrate.sh` (実行権限無い場合は'chmod +x pgloader_migrate.sh')



