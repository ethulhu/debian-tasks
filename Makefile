VERSION := "$(shell date --utc +%Y%m%d.%H%M)-1"

build:
	@true

test: build
	@true

deb: task-eth-laptop task-eth-interactive task-eth-base

clean:
	rm -rf *.deb *.deb.dat

%: %.control
	sed -i "s/^Version:.*/Version: $(VERSION)/" $<
	equivs-build $<
