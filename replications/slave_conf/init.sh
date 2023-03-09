pg_ctl -D ${PGDATA} stop
rm -rf ${PGDATA}/*
pg_basebackup -R -h master_db -U replicator -D ${PGDATA} -P
pg_ctl -D ${PGDATA} start
