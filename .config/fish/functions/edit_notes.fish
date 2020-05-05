function edit_notes
	set NOTES_DIR $HOME/notes
	set NOTE (find $NOTES_DIR -type f | sed -e "s|$NOTES_DIR/||g" | rofi -dmenu)
	if test -n "$NOTE"
		mkdir -p (dirname $NOTES_DIR/$NOTE)
		x-terminal-emulator -- kak "$NOTES_DIR/$NOTE"
	end
end
