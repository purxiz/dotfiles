function edit_notes
	set NOTES_DIR $HOME/notes
	set NOTE (ls -1 $NOTES_DIR | rofi -dmenu)
	if test -n "$NOTE"
		mkdir -p (dirname $NOTES_DIR/$NOTE)
		x-terminal-emulator -- kak "$NOTES_DIR/$NOTE"
	end
end
