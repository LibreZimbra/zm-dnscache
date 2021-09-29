# SPDX-License-Identifier: AGPL-3.0-or-later

all:
	echo -n

include build.mk

install:
	mkdir -p $(DESTDIR)/etc/resolvconf/update.d \
                 $(DESTDIR)/etc/sudoers.d
	cp conf/dns/zimbra-unbound $(DESTDIR)/etc/resolvconf/update.d
	cp conf/sudoers.d/02_zimbra-dnscache $(DESTDIR)/etc/sudoers.d

clean:
	echo -n
