# +---------------------------------------------------------------------------+
# | Makefile                                                                  |
# |                                                                           |
# | Copy over part of generated content                                       |
# |                                                                           |
# | Version: 0.1.0 (change inline)                                            |
# |                                                                           |
# | Changes:                                                                  |
# |                                                                           |
# | 0.1.0 2020-04-28 Christian Külker <c@c8i.org>                             |
# |     - initial release                                                     |
# |                                                                           |
# +---------------------------------------------------------------------------+
#
VERSION=0.1.0
# -----------------------------------------------------------------------------
# NO CHANGES BEYOND THIS POINT
ifndef VERSION
$(error VERSION is NOT defined)
endif
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
	@echo "make realclean : remove target"
	@echo "make test      : debug test"
	@echo "make copy      : copy public dir from rankle-theme-example"
info:
	@echo "VERSION: [$(VERSION)]"
clean:
realclean: clean
test:
	@echo "$(DEBUG_PRINT)"
copy:
	rsync -aSPAHX --cvs-exclude --exclude ".git" --exclude ".git*" --exclude "**.md" --exclude "**.markdown" --exclude "de_DE" --exclude "ja_JP" ../pankyll-theme-rankle-example/public/ .


