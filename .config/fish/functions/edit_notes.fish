function edit_notes
	set NOTES_DIR $HOME/notes
	set NOTE (find $NOTES_DIR -type f | sed -e "s|$NOTES_DIR/||g" | rofi -dmenu -p "Notes")
	if test (echo $NOTE | cut -d' ' -f1) = 'find'
		set FILE (grep -r (echo $NOTE | cut -d' ' -f1 --complement) $NOTES_DIR | sed -e "s|$NOTES_DIR/||g" | rofi -dmenu -p "Notes")
		set NOTE (echo "$FILE" | cut -d':' -f1 | sed -e "s|$NOTES_DIR||g")
	end
	if test -n "$NOTE"
		mkdir -p (dirname $NOTES_DIR/$NOTE)
		x-terminal-emulator -- $EDITOR "$NOTES_DIR/$NOTE"
	end
end

#if test -n ($EDITOR -l | grep "notes")
#	x-terminal-emulator -- $EDITOR -s "notes" "$NOTES_DIR/$NOTE"
#else
#	x-terminal-emulator -- $EDITOR -c "notes" "$NOTES_DIR/$NOTE"
#end
