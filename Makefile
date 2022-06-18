#
# SPDX-License-Identifier: GPL-3.0-or-later

PREFIX ?= /usr/local
BIN_DIR=$(DESTDIR)$(PREFIX)/bin
DOC_DIR=$(DESTDIR)$(PREFIX)/share/doc/univaiso
PROFILE_DIR=$(DESTDIR)$(PREFIX)/share/univaiso

DOC_FILES=$(wildcard docs/*) $(wildcard *.rst)
SCRIPT_FILES=$(wildcard univaiso/*) $(wildcard archiso/*) $(wildcard scripts/*.sh) $(wildcard .gitlab/ci/*.sh) \
             $(wildcard configs/*/profiledef.sh) $(wildcard configs/*/airootfs/usr/local/bin/*)

all:

check: shellcheck

shellcheck:
	shellcheck -s bash $(SCRIPT_FILES)

install: install-scripts install-profiles install-doc

install-scripts:
	install -vDm 755 univaiso/mkunivaiso -t "$(BIN_DIR)/"
	install -vDm 755 scripts/run_archiso.sh "$(BIN_DIR)/run_univaiso"

install-doc:
	install -vDm 644 $(DOC_FILES) -t $(DOC_DIR)

.PHONY: check install install-doc install-profiles install-scripts shellcheck
