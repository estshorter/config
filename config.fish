if status is-interactive
    # Commands to run in interactive sessions can go here
    if command -q exa
        alias e='exa --group-directories-first'
        alias el='exa -hl --time-style=iso --group-directories-first'
        alias ea='exa -hal --time-style=iso --group-directories-first'
        alias ls=e
        alias ll=el
        alias la=ea
    end
    if fisher list | grep -qE PatrickF1/fzf.fish
        fzf_configure_bindings --directory=\co --variable=\e\cv
    end
end
