function edit_config
	set program (cat $HOME/.config/scripts/list | cut -d' ' -f1 | rofi -dmenu -p "Config:")
	echo "$program"
	if test -n "$program"
		set file (cat $HOME/.config/scripts/list | grep -w "$program" | cut -d' ' -f2)
		exec x-terminal-emulator -e "vim $file"
	end
end
