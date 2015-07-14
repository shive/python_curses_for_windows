# -*- mode: makefile-gmake; coding: euc-jp-unix -*-
#======================================================================================================================

SCONS := scons -Qj$(NUMBER_OF_PROCESSORS)
TARGET := _curses.pyd

build: $(TARGET)
$(TARGET):
	$(SCONS) $@

clean:
	$(SCONS) . -c
	$(RM) life.py

life: $(TARGET) life.py
	python life.py
life.py:
	curl -O http://svn.python.org/projects/python/branches/dmalcolm-ast-optimization-branch/Demo/curses/life.py
