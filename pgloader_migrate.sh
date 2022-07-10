docker-compose exec postgres pgloader --debug \
mysql://user:password@mysql:3306/database \
postgresql://postgres:root@localhost:5432/postgres