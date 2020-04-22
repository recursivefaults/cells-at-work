# GNU Make solution makefile autogenerated by Premake
# Type "make help" for usage help

ifndef config
  config=debug
endif
export config

PROJECTS := cells-at-work

.PHONY: all clean help $(PROJECTS)

all: $(PROJECTS)

cells-at-work: 
	@echo "==== Building cells-at-work ($(config)) ===="
	@${MAKE} --no-print-directory -C . -f cells-at-work.make

clean:
	@${MAKE} --no-print-directory -C . -f cells-at-work.make clean

help:
	@echo "Usage: make [config=name] [target]"
	@echo ""
	@echo "CONFIGURATIONS:"
	@echo "   debug"
	@echo "   release"
	@echo ""
	@echo "TARGETS:"
	@echo "   all (default)"
	@echo "   clean"
	@echo "   cells-at-work"
	@echo ""
	@echo "For more information, see http://industriousone.com/premake/quick-start"