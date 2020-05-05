function edit_notes
	set NOTES_DIR $HOME/notes
	set NOTE (find $NOTES_DIR -type f | sed -e "s|$NOTES_DIR/||g" | rofi -dmenu)
	if test -n "$NOTE"
		mkdir -p (dirname $NOTES_DIR/$NOTE)
		x-terminal-emulator -- kak "$NOTES_DIR/$NOTE"
	end
end

#if test -n (kak -l | grep "notes")
#	x-terminal-emulator -- kak -s "notes" "$NOTES_DIR/$NOTE"
#else
#	x-terminal-emulator -- kak -c "notes" "$NOTES_DIR/$NOTE"
#end
