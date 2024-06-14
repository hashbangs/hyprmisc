if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting

#custom prompt 
function fish_prompt
    echo (set_color blue)'❯_ '
end

function fish_right_prompt
    set -l last_status $status
    # Prompt status only if it's not 0
    set -l stat
    if test $last_status -ne 0
        set stat (set_color red)"[$last_status]"(set_color normal)
    end
    echo $stat (prompt_pwd)
end

#paths env variables for wine and winetricks for protontricks
export WINE="/usr/bin/wine"
export WINETRICKS="/usr/bin/winetricks"
