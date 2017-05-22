function fish_prompt
    set s $status
    if test $s -ne 0
        set_color -o red
        printf '%s ' $s
    end

    set_color -o black
    printf '%s ' (date '+%H:%M')

    set_color $fish_color_user
    printf '%s@' (whoami)
    set_color $fish_color_host
    printf '%s ' (hostname)

    set_color $fish_color_cwd
    printf '%s' (pwd_collapse_home)

    set git_sha (git rev-parse --short HEAD ^/dev/null)
    if test $status -eq 0
        set_color -o green
        set git_branch (git symbolic-ref --short HEAD ^/dev/null)
        if test $status -eq 0
            printf ' %s' $git_branch
        else
            printf ' %s' $git_sha
        end
    end

    set_color -o black
    printf ' %s' (jobs -c | tail -n+1)

    set_color normal
    printf '\n> '
end
