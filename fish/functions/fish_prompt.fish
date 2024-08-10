function fish_prompt
    set -l month (date +%m)
    switch $month
        case 12 01 02
            echo -n (set_color cyan)(prompt_pwd)(set_color cyan)' ❯ '
        case 03 04 05
            echo -n (set_color green)(prompt_pwd)(set_color green)' ❯ '
        case 06 07 08
            echo -n (set_color yellow)(prompt_pwd)(set_color yellow)' ❯ '
        case 09 10 11
            echo -n (set_color red)(prompt_pwd)(set_color red)' ❯ '
    end
    set_color normal
end
