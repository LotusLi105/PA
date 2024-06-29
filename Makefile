-include nemu/Makefile.git

default:
	@echo "Please run 'make' under any subprojects to compile."
 
clean:
	-$(MAKE) -C nemu clean
	-$(MAKE) -C nexus-am clean
	-$(MAKE) -C nanos-lite clean
	

submit: clean
	git gc
	cd .. && tar cj $(shell basename `pwd`) > $(STU_ID).tar.bz2


