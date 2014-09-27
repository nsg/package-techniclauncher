
install: deb rpm

deb: prep
	docker build -t techniclauncher - < Dockerfile.deb
	docker run -t -i -v $(CURDIR)/target:/target techniclauncher

rpm: prep
	docker build -t techniclauncher - < Dockerfile.rpm
	docker run -t -i -v $(CURDIR)/target:/target techniclauncher

prep:
	mkdir -p target

clean:
	[ -d target ] && rm -rf target || :
