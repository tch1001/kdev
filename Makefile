obj-m += mymodule.o

RELEASE = 5.15.81-0-lts
all:
	make -C /lib/modules/$(RELEASE)/build M=$(PWD) modules

clean:
	make -C /lib/modules/$(RELEASE)/build M=$(PWD) clean
	