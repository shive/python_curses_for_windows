#!/bin/env python
# -*- mode: python; coding: utf-8-sig -*-
#==============================================================================

import os

#------------------------------------------------------------------------------
#   PDCursesをビルド
#------------------------------------------------------------------------------

env = Environment(
    ENV = os.environ,
    TARGET_ARCH = 'x86_64',
    )
env.Append(
    CFLAGS = ['/O2', '/Ob2', '/MD'],
    CPPDEFINES = ['_WIN32', 'MBCS', '_DLL', 'mkstemp=mktemp', 'PDC_FORCE_UTF8'],
    CPPPATH = ['PDCurses-PDCurses_3_4/win32', 'PDCurses-PDCurses_3_4'],
    LIBS = ['kernel32', 'user32', 'Advapi32'],
    LINKFLAGS = ['/DEF:obj/pdcurses.def'],
    )
sources = ['PDCurses-PDCurses_3_4/win32/pdcclip.c',
           'PDCurses-PDCurses_3_4/win32/pdcdisp.c',
           'PDCurses-PDCurses_3_4/win32/pdcgetsc.c',
           'PDCurses-PDCurses_3_4/win32/pdckbd.c',
           'PDCurses-PDCurses_3_4/win32/pdcscrn.c',
           'PDCurses-PDCurses_3_4/win32/pdcsetsc.c',
           'PDCurses-PDCurses_3_4/win32/pdcutil.c',
           'PDCurses-PDCurses_3_4/pdcurses/addch.c',
           'PDCurses-PDCurses_3_4/pdcurses/addchstr.c',
           'PDCurses-PDCurses_3_4/pdcurses/addstr.c',
           'PDCurses-PDCurses_3_4/pdcurses/attr.c',
           'PDCurses-PDCurses_3_4/pdcurses/beep.c',
           'PDCurses-PDCurses_3_4/pdcurses/bkgd.c',
           'PDCurses-PDCurses_3_4/pdcurses/border.c',
           'PDCurses-PDCurses_3_4/pdcurses/clear.c',
           'PDCurses-PDCurses_3_4/pdcurses/color.c',
           'PDCurses-PDCurses_3_4/pdcurses/debug.c',
           'PDCurses-PDCurses_3_4/pdcurses/delch.c',
           'PDCurses-PDCurses_3_4/pdcurses/deleteln.c',
           'PDCurses-PDCurses_3_4/pdcurses/deprec.c',
           'PDCurses-PDCurses_3_4/pdcurses/getch.c',
           'PDCurses-PDCurses_3_4/pdcurses/getstr.c',
           'PDCurses-PDCurses_3_4/pdcurses/getyx.c',
           'PDCurses-PDCurses_3_4/pdcurses/inch.c',
           'PDCurses-PDCurses_3_4/pdcurses/inchstr.c',
           'PDCurses-PDCurses_3_4/pdcurses/initscr.c',
           'PDCurses-PDCurses_3_4/pdcurses/inopts.c',
           'PDCurses-PDCurses_3_4/pdcurses/insch.c',
           'PDCurses-PDCurses_3_4/pdcurses/insstr.c',
           'PDCurses-PDCurses_3_4/pdcurses/instr.c',
           'PDCurses-PDCurses_3_4/pdcurses/kernel.c',
           'PDCurses-PDCurses_3_4/pdcurses/keyname.c',
           'PDCurses-PDCurses_3_4/pdcurses/mouse.c',
           'PDCurses-PDCurses_3_4/pdcurses/move.c',
           'PDCurses-PDCurses_3_4/pdcurses/outopts.c',
           'PDCurses-PDCurses_3_4/pdcurses/overlay.c',
           'PDCurses-PDCurses_3_4/pdcurses/pad.c',
           'PDCurses-PDCurses_3_4/pdcurses/panel.c',
           'PDCurses-PDCurses_3_4/pdcurses/printw.c',
           'PDCurses-PDCurses_3_4/pdcurses/refresh.c',
           'PDCurses-PDCurses_3_4/pdcurses/scanw.c',
           'PDCurses-PDCurses_3_4/pdcurses/scr_dump.c',
           'PDCurses-PDCurses_3_4/pdcurses/scroll.c',
           'PDCurses-PDCurses_3_4/pdcurses/slk.c',
           'PDCurses-PDCurses_3_4/pdcurses/termattr.c',
           'PDCurses-PDCurses_3_4/pdcurses/terminfo.c',
           'PDCurses-PDCurses_3_4/pdcurses/touch.c',
           'PDCurses-PDCurses_3_4/pdcurses/util.c',
           'PDCurses-PDCurses_3_4/pdcurses/window.c']
target = [env.StaticLibrary('obj/pdcurses_s', sources),
          env.SharedLibrary('obj/pdcurses', sources)]

env.Command(sources + ['PDCurses-PDCurses_3_4/win32/gccwin32.mak'], 'PDCurses-PDCurses_3_4.tar.gz',
            'tar xvf $SOURCE')

symbols = env.Command('PDCurses-PDCurses_3_4/win32/pdcurses.def', 'PDCurses-PDCurses_3_4/win32/gccwin32.mak',
                      'make -C ${SOURCE.dir} -f ${SOURCE.name} ${TARGET.name} UTF8=Y')
env.Requires(target, env.CopyAs('obj/pdcurses.def', symbols))

#------------------------------------------------------------------------------
#   _cursesモジュールをビルド
#------------------------------------------------------------------------------

env = Environment(
    ENV = os.environ,
    TARGET_ARCH = 'x86_64'
    )
env.Append(
    CFLAGS = ['/O2', '/Ob2', '/MD'],
    CPPDEFINES = ['_MBCS', 'WIN32', '_DLL', 'UINT=unsigned int', 'mkstemp=mktemp',
                  'HAVE_CURSES_RESIZE_TERM', 'NCURSES_MOUSE_VERSION'],
    CPPPATH = ['Python-3.4.2', r'C:\Python34\include', 'PDCurses-PDCurses_3_4'],
    LIBPATH = ['Python-3.4.2', r'C:\Python34\Libs'],
    LIBS = ['python34', 'kernel32', 'user32', 'advapi32'],
    )
env['SHLIBSUFFIX'] = '.pyd'
sources = ['Python-3.4.2/Modules/_cursesmodule.c', 'Python-3.4.2/Modules/_curses_panel.c']
env.Requires(sources, 'obj/pdcurses_s.lib')
target = env.SharedLibrary('obj/_curses', sources + ['obj/pdcurses_s.lib'])
env.CopyAs('_curses.pyd', 'obj/_curses.pyd')
env.Command(sources, 'Python-3.4.2.tar.xz',
            ['tar xvf $SOURCE', 'patch -u Python-3.4.2/Modules/_cursesmodule.c < modify.patch'])

env.Clean('.', ['PDCurses-PDCurses_3_4', 'Python-3.4.2', 'obj'])
