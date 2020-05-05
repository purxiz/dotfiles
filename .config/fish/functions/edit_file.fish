#!/usr/bin/env fish

function edit_file
	set program (cat "$HOME"/.config/scripts/list | cut -d' ' -f1 | rofi -dmenu -p "Config:")
	echo "$program"
	if test -n "$program"
		set file (cat "$HOME"/.config/scripts/list | grep -w "$program" | cut -d' ' -f2 | sed "s|~|$HOME|g" | head -n 1)
		x-terminal-emulator -- kak "$file"
	end
end
