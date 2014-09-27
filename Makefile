
install: deb rpm

deb: prep
	docker build -t techniclauncher - < Dockerfile.deb
	docker run -t techniclauncher cat /target/techniclauncher_3.0-439_amd64.deb > target/techniclauncher_3.0-439_amd64.deb

rpm: prep
	docker build -t techniclauncher - < Dockerfile.rpm
	docker run -t techniclauncher cat /target/techniclauncher-3.0_439-1.x86_64.rpm > target/techniclauncher-3.0_439-1.x86_64.rpm

prep:
	mkdir -p target

clean:
	rm target/*.{deb,rpm}
	rmdir target
	docker rm techniclauncher
