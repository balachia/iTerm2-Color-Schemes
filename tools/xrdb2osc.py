#!/usr/bin/env python

# This script converts xrdb (X11) color scheme format to ANSI OSC codes
# to set terminal colors directly
#
# Usage:
# xrdb2osc.py path/to/xrdb/theme/file
#
# Author: Anthony Vashevko
# Adapted from x2rd2terminator.pu by Xabier Larrakoetxea

import os
import re
import argparse
import sys


def main(xrdb_path, output_path=None):
    global color_regex, xrdb_regex
    # The regexes to match the colors
    color_regex = re.compile("#define +Ansi_(\d+)_Color +(#[A-Fa-f0-9]{6})")
    bg_regex = re.compile("#define +Background_Color +(#[A-Fa-f0-9]{6})")
    fg_regex = re.compile("#define +Foreground_Color +(#[A-Fa-f0-9]{6})")
    cursor_regex = re.compile("#define +Cursor_Color +(#[A-Fa-f0-9]{6})")

    with open(xrdb_path) as f:
        lines = f.readlines()

    osc_start = '\033]'
    osc_end = '\007'
    osc_color = r'4;'
    osc_fg = r'10;'
    osc_bg = r'11;'
    osc_cursor = r'12;'

    # Search special colors
    color_file = "\n".join(lines)

    bg_color = bg_regex.search(color_file).group(1)
    fg_color = fg_regex.search(color_file).group(1)
    cursor_color = cursor_regex.search(color_file).group(1)

    # Search palette
    colors = filter(lambda x: x, map(color_regex.match, lines))
    colors = ";".join(['{};{}'.format(x.group(1), x.group(2)) for x in colors])

    theme = osc_start + '10;' + fg_color + osc_end          # fg
    theme += osc_start + '11;' + bg_color + osc_end         # bg
    theme += osc_start + '12;' + cursor_color + osc_end     # cursor
    theme += osc_start + '4;' + colors + osc_end            # colors

    if not output_path:
        sys.stdout.write(theme)
    else:
        for fn in output_path:
            with open(fn, 'w+') as f:
                f.write(theme)


if __name__ == "__main__":

    parser = argparse.ArgumentParser(
        description='Translate X color schemes to OSC codes')
    parser.add_argument('xrdb_path', type=str, help='path to xrdb files')
    parser.add_argument('output_path', nargs='*',
                        help='path where terminator config files will be' +
                        ' created, if not provided then will be printed')

    args = parser.parse_args()

    main(args.xrdb_path, args.output_path)
