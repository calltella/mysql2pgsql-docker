# mysql2pgsql-docker
MySQLからPostgreSQLにDockerとpgloaderを使ってデータコンバートします。

**セットアップ**

1. リポジトリをクローン

2. ダンプしたMySQLファイルをmigrationsフォルダに配置してサンプルファイルを削除

3. 実行 `docker-compose up -d` （マイグレーションしますのでデータが多い場合は待ってから4を実行）

4. Dockerが起動したらバッチを実行 `./pgloader_migrate.sh` (実行権限無い場合は'chmod +x pgloader_migrate.sh')


### ログイン
```
docker-compose exec posgres bash
psql -U postgres
pg_dump -U postgres -d postgres > database.dump
/var/lib/postgresql
bash-5.1# psql -U postgres -d postgres -f ./database.dump
\l (DB一覧)
\c (DB選択)
\dt (テーブル一覧)
\d table (テーブル構造exit)

apt-get install sbcl unzip libsqlite3-dev make curl gawk freetds-dev libzip-dev
git clone https://github.com/dimitri/pgloader.git

cd /path/to/pgloader
make pgloader
./build/bin/pgloader --help
./build/bin/pgloader --debug mysql://user:password@mysql/database postgresql://postgres:root@localhost:5432/postgres
```
