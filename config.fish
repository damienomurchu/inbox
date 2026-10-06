fish_add_path -g /Users/me/.lmstudio/bin
fish_add_path -g /Users/me/src/personal/personal-automation/bin/

if status is-interactive
    set fish_greeting

    starship init fish | source

    # Add a blank line between the entered command and its output
    function __blank_line_before_command_output --on-event fish_preexec
        echo
    end

    # fzf
    if type -q fzf
        fzf --fish | source
    end

    # zoxide
    if type -q zoxide
        zoxide init fish | source
    end

    cd $HOME

    source ~/.config/fish/abbr.fish

    source ~/.orbstack/shell/init2.fish 2>/dev/null || :
end

