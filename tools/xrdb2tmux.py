#!/usr/bin/env python

# This script converts xrdb (X11) color scheme format to terminator color
# scheme format
#
# Usage:
# xrdb2tmux.py path/to/xrdb/files -d /terminator/schemes/output [-light]
#
# Author: Xabier Larrakoetxea
# Adapted from xrdb2terminator.py Xabier Larrakoetxea

import os
import re
import argparse


def main(xrdb_path, output_path=None, light=False):
    global color_regex, xrdb_regex
    # The regexes to match the colors
    color_regex = re.compile("#define +Ansi_(\d+)_Color +(#[A-Fa-f0-9]{6})")
    bg_regex = re.compile("#define +Background_Color +(#[A-Fa-f0-9]{6})")
    fg_regex = re.compile("#define +Foreground_Color +(#[A-Fa-f0-9]{6})")
    cursor_regex = re.compile("#define +Cursor_Color +(#[A-Fa-f0-9]{6})")
    # File regex
    xrdb_regex = re.compile("(.+)\.[xX][rR][dD][bB]")
    for i in filter(lambda x: xrdb_regex.match(x), os.listdir(xrdb_path)):

        # per file
        with open(os.path.join(xrdb_path, i)) as f:
            lines = f.readlines()

        # Search special colors
        color_file = "\n".join(lines)

        bg_color = bg_regex.search(color_file).group(1)
        fg_color = fg_regex.search(color_file).group(1)
        cursor_color = cursor_regex.search(color_file).group(1)

        # Search palette
        colors = sorted(filter(lambda x: color_regex.match(x), lines),
                        key=lambda x: int(color_regex.match(x).group(1)))

        # Create the color string
        colors = ":".join(map(lambda x: color_regex.match(x).group(2), colors))

        scheme_dark = """
# {name} -- Dark
set -g status-style bg='{bg}',fg='{fg}'
set -g window-status-style bg=colour0,fg='{bg}'
set -g window-status-current-style bg=colour8,fg='{bg}',bold
"""

        scheme_light = """
# {name} -- Light
set -g status-style bg='{bg}',fg='{fg}'
set -g window-status-style bg=colour7,fg=default
set -g window-status-current-style bg=colour15,fg=default,bold
"""

        scheme = scheme_light if light else scheme_dark

        output = scheme.format(name=xrdb_regex.match(i).group(1),
                               pl=colors,
                               bg=bg_color,
                               cr=cursor_color,
                               fg=fg_color)

        if not output_path:
            print(output)
        else:
            dest = os.path.join(output_path, xrdb_regex.match(i).group(1))
            with open('{0}.tmux'.format(dest), 'w+') as f:
                f.write(output)


if __name__ == "__main__":

    parser = argparse.ArgumentParser(
        description='Translate X color schemes to tmux config')
    parser.add_argument('xrdb_path', type=str, help='path to xrdb files')
    parser.add_argument('-d', '--destiny', type=str, dest='output_path',
                        help='path where tmux config files will be' +
                        ' created, if not provided then will be printed')
    parser.add_argument('-l', '--light', dest='light', action='store_true',
                        help='use light color scheme format')

    args = parser.parse_args()

    main(args.xrdb_path, args.output_path, light=args.light)
