obj-m :=mini4wd.o

mini4wd.ko: mini4wd.c
	make -C /usr/src/linux-headers-`uname -r` M=`pwd` V=1 modules

clean:
	make -C /usr/src/linux-headers-`uname -r` M=`pwd` V=1 clean
