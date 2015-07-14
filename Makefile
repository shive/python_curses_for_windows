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
	curl -O https://hg.python.org/cpython/raw-file/1cae77f873af/Tools/demo/life.py
