# _curses module for Python3.x(x64) on Windows

## requirements
SCons-2.3.x (Python2.7, for build SConstruct)
Python3.4.x (for running life.py)
VisualStudio 2010 or later (for compile)
Cygwin (for make, curl, patch)

## notes
PDCursesのWIN実装はsetuptermが必ず失敗するのでコメントアウトしてあります。(modify.patch)

## externals
Python-3.4.2.tar.xz .. https://www.python.org/downloads/release/python-343/
PDCurses-PDCurses_3_4.tar.gz .. https://github.com/wmcbrine/PDCurses/releases
life.py .. http://svn.python.org/projects/python/branches/dmalcolm-ast-optimization-branch/Demo/curses/life.py
