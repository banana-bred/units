NAME   := units
BINDIR ?= /usr/local/bin

install:
	install -D -m755 $(NAME) "$(DESTDIR)$(BINDIR)/$(NAME)"

uninstall:
	rm "$(DESTDIR)$(BINDIR)/$(NAME)"

debug:
	@echo "NAME    = $(NAME)"
	@echo "BINDIR  = $(BINDIR)"
	@echo "DESTDIR = $(DESTDIR)"
