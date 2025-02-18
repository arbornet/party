# Generated automatically from Makefile.in by configure.
SHELL= /bin/sh

srcdir= .

CC= cc
INSTALL= /usr/bin/install -c
LN= ln -s

prefix= /arbornet
exec_prefix= ${prefix}
bindir= /suid/bin
mandir= ${prefix}/man
datadir= ${prefix}/share
sysconfdir= /arbornet/etc
localstatedir= /arbornet/var

suid=party
sgid=

CPPFLAGS= 
CFLAGS= -g -O2
LDFLAGS= 
LIBS= -ltermcap 

INCL= party.h
SRCS = party.c proc.c opt.c opttab.c output.c input.c users.c close.c \
	ignore.c debug_stty.c
OBJS = party.o proc.o opt.o opttab.o output.o input.o users.o close.o \
	ignore.o debug_stty.o

DIST= INSTALLATION $(SRCS) $(INCL) makeopt.c noisetab party.1 \
	partyhlp partytab chantab

all: party

party: $(OBJS) party.h opt.h
	$(CC) -o party $(CFLAGS) $(OBJS) $(LIBS)

party.o: party.c party.h opt.h config.h
proc.o: proc.c party.h opt.h config.h
opt.o: opt.c party.h opt.h  config.h
output.o: output.c party.h opt.h config.h
input.o: input.c party.h opt.h config.h
users.o: users.c party.h opt.h config.h
opttab.o: opttab.c party.h config.h
close.o: close.c party.h opt.h config.h
ignore.o: ignore.c party.h opt.h config.h
debug_stty.o: debug_stty.c party.h config.h

opt.h: makeopt
	./makeopt > opt.h

makeopt: opttab.o makeopt.o party.h
	$(CC) -o makeopt $(CFLAGS) makeopt.o opttab.o

install: party
	install -d $(bindir)
	install -d $(localstatedir)
	install -d $(sysconfdir)
	@if test "X$(sgid)" = "X"; then \
	    echo $(INSTALL) -o $(suid) -m 4711 party $(bindir); \
	    $(INSTALL) -o $(suid) -m 4711 party $(bindir); \
	    echo install -d -o $(suid) -m 755 $(localstatedir)/party/log; \
	    install -d -o $(suid) -m 755 $(localstatedir)/party/log; \
	    echo rm -f $(localstatedir)/party/partytmp; \
	    rm -f $(localstatedir)/party/partytmp; \
	    echo touch $(localstatedir)/party/partytmp; \
	    touch $(localstatedir)/party/partytmp; \
	    echo chown $(suid) $(localstatedir)/party/partytmp; \
	    chown $(suid) $(localstatedir)/party/partytmp; \
	    echo chmod 600 $(localstatedir)/party/partytmp; \
	    chmod 600 $(localstatedir)/party/partytmp; \
	else \
	    echo $(INSTALL) -g $(sgid) -m 2711 party $(bindir); \
	    $(INSTALL) -g $(sgid) -m 2711 party $(bindir); \
	    echo install -d -g $(sgid) -m 775 $(localstatedir)/party/log; \
	    install -d -g $(sgid) -m 775 $(localstatedir)/party/log; \
	    echo rm -f $(localstatedir)/party/partytmp; \
	    rm -f $(localstatedir)/party/partytmp; \
	    echo touch $(localstatedir)/party/partytmp; \
	    touch $(localstatedir)/party/partytmp; \
	    echo chgrp $(sgid) $(localstatedir)/party/partytmp; \
	    chgrp $(sgid) $(localstatedir)/party/partytmp; \
	    echo chmod 660 $(localstatedir)/party/partytmp; \
	    chmod 660 $(localstatedir)/party/partytmp; \
	fi
	-(cd $(bindir); $(LN) party pwho)
	mkdir -p $(sysconfdir)/party
	$(INSTALL) -m 644 partytab $(sysconfdir)/party
	$(INSTALL) -m 644 chantab $(sysconfdir)/party
	$(INSTALL) -m 644 noisetab $(sysconfdir)/party
	$(INSTALL) -m 644 partyhlp $(sysconfdir)/party

party.tar: $(DIST)
	tar cvf party.tar $(DIST)

tags:  $(SRCS) $(INCL) 
	ctags $(SRCS) $(INCL)

clean:
	-rm -f party opt.h makeopt core *.o
