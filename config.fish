if status is-interactive
        alias e='exa --group-directories-first'
        alias el='exa -hl --git --time-style=iso --group-directories-first'
        alias ea='exa -hal --git --time-style=iso --group-directories-first'
        fzf_configure_bindings --directory=\co --variable=\e\cv
    # Commands to run in interactive sessions can go here
end
