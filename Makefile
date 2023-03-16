# +---------------------------------------------------------------------------+
# | Makefile                                                                  |
# |                                                                           |
# | Copy over part of generated content                                       |
# |                                                                           |
# | Version: 0.1.3 (change inline)                                            |
# |                                                                           |
# | Changes:                                                                  |
# |                                                                           |
# | 0.1.3 2023-03-16 Christian Külker <c@c8i.org>                             |
# |     - Fix server target: echo and missing colon                           |
# | 0.1.2 2022-05-19 Christian Külker <c@c8i.org>                             |
# |     - Add server target                                                   |
# |     - Improve info target                                                 |
# | 0.1.1 2020-04-30 Christian Külker <c@c8i.org>                             |
# |     - Add linkcheck target                                                |
# |     - Add repository cleanup to reaclean target                           |
# | 0.1.0 2020-04-28 Christian Külker <c@c8i.org>                             |
# |     - Initial release                                                     |
# |                                                                           |
# +---------------------------------------------------------------------------+
#
VERSION=0.1.3
# -----------------------------------------------------------------------------
# NO CHANGES BEYOND THIS POINT
ifndef VERSION
$(error VERSION is NOT defined)
endif
PORT := 8010
HOST := $(shell hostname)
PY   := /usr/bin/python3

DEBUG_PRINT='1[$@]2[$%]3[$<]4[$?]5[$^]6[$+]7[$|]8[$*]9[$(@D)]10[$(@F)]11[$(*D)]\n12[$(*F)]13[$(%D)]14[$(%F)]15[$(<D)]16[$(<F)]17[$(^D)]18[$(^F)]\n19[$(+D)]20[$(+F)]21[$(?D)]22[$(?F)]\n'
L:=============================================================================
.PHONY: usage info clean realclean test copy
usage:
	@echo "$(L)"
	@echo "USAGE:"
	@echo "$(L)"
	@echo "make usage     : this information"
	@echo "make info      : print more info"
	@echo "make clean     : remove prcess files"
	@echo "make realclean : remove target and clean up changes to git"
	@echo "make test      : debug test"
	@echo "make copy      : copy public dir from rankle-theme-example"
	@echo "make linkcheck : check local and external links of public site"
	@echo "make server    : fire up a local test web server on port $(PORT)"
info:
	@echo "VERSION   : [$(VERSION)]"
	@echo "WEB SERVER:"
	@echo "  HOST    : [${HOST}]"
	@echo "  PORT    : [$(PORT)]"
	@echo "  PY      : [$(PY)]"
	@git submodule status --recursive
clean:
realclean: clean
	cd css && git checkout .
	cd en_US && git checkout .
	cd font && git checkout .
	cd js && git checkout .
	cd webfonts && git checkout .
test:
	@echo "$(DEBUG_PRINT)"
copy:
	rsync -aSPAHX --cvs-exclude --exclude ".git" --exclude ".git*" --exclude "**.md" --exclude "**.markdown" --exclude "de_DE" --exclude "ja_JP" ../pankyll-theme-rankle-example/public/ .
linkcheck:
	linkchecker --check-extern --no-status --ignore-url=/webfonts/fa-regular-400 -o blacklist https://www.pankyll.org
server:
	@bash -c 'echo -e "$(L)\nhttp://localhost:$(PORT)\nhttp://${HOST}:$(PORT)\n${L}";'
	$(PY) -m http.server $(PORT);

