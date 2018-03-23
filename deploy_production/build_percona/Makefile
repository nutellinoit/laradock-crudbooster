build:
	cp ../../dump_db/latest.sql latest.sql || true
	docker build -t nutellinoit/laradock-crudbooster-percona:${VERSION} .
push:
	docker push nutellinoit/laradock-crudbooster-percona:${VERSION}