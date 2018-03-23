build:
	rm -rf rootfs || true
	cp -r ../../crm rootfs
	docker build -t nutellinoit/laradock-crudbooster-application:${VERSION} .
	rm -rf rootfs || true
push:
	docker push nutellinoit/laradock-crudbooster-application:${VERSION}
