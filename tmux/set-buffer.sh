#!/bin/bash
# Set tmux buffers with values from file
# 
# Update .bashrc to execute in tmux session on startup
#
#     if [ -n "$TMUX" ]; then
#         ~/.tmux-set-buffer.sh /path/to/buffer/file
#     fi
#
# Buffer file example:
# 
#      unnamed_buffer_value
#      buffer-1 named-buffer-value1
#      buffer-2 long string
#      # comment line      

BUFFER_FILE=$1

while read line; do
    if [[ $line == \#* ]]; then
        continue
    else
        line_array=($line)
        if [ "${#line_array[@]}" -ge 2 ]; then
            value=${line_array[@]:1}
            tmux setb -b "${line_array[0]}" "$value"
        else
            tmux setb "$line"
        fi
    fi

done < $BUFFER_FILE