
install: deb rpm

deb: prep
	cp Dockerfile.deb Dockerfile
	docker build -t techniclauncher .
	rm Dockerfile
	docker run -t -i -v $(CURDIR)/target:/target techniclauncher

rpm: prep
	cp Dockerfile.rpm Dockerfile
	docker build -t techniclauncher .
	rm Dockerfile
	docker run -t -i -v $(CURDIR)/target:/target techniclauncher

prep:
	mkdir -p target

clean:
	[ -d target ] && rm -rf target || :
