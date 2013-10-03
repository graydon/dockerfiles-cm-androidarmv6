REPO=graydon/cm-androidarmv6-build
IMAGES=base mirrored gingerbread gingerbread-armv6
STAMPS=$(addsuffix /build-stamp,$(IMAGES))

all: $(STAMPS)

%/build-stamp: %/Dockerfile Makefile
	cd $* && docker build -t $(REPO):$* .
	touch $@


push: all
	docker push $(REPO)

clean:
	rm -f $(STAMPS)
