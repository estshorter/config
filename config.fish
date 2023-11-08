if status is-interactive
    # Commands to run in interactive sessions can go here
    if command -q exa
        alias e='eza --group-directories-first'
        alias el='eza -hl --time-style=iso --group-directories-first'
        alias ea='eza -hal --time-style=iso --group-directories-first'
        alias ls=e
        alias ll=el
        alias la=ea
    end
    if command -q fdfind && ! command -q fd
        alias fd=fdfind
    end
    if fisher list | grep -q PatrickF1/fzf.fish
        fzf_configure_bindings --directory=\co --variable=\e\cv
    end
end
