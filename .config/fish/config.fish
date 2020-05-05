# enable vi style key-bindings in the terminal
fish_vi_key_bindings

# custom git alias for use in home directory to avoid colliding with "real" repos
function config
	/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME $argv
end

# make sure kak is used for general editor stuff
set -x VISUAL kak
set -x EDITOR $VISUAL

# happy greetings if fortune is installed
function fish_greeting
	if not type fortune > /dev/null 2>&1
	else
		fortune
	end
end

# Abbreviations
if status --is-interactive #only run in interactive shells
    abbr --add --global dif 'kitty +kitten diff'
    abbr --add --global gd 'git difftool --no-symlinks --dir-diff'
    abbr --add --global configdiff 'config difftool --no-symlinks --dir-diff'
end
