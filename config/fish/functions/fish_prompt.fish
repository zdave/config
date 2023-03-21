function fish_prompt
    set -l s $status
    if test $s -ne 0
        set_color -o brred
        printf '%s ' $s
    end

    set_color -o brblack
    printf '%s ' (date '+%H:%M')

    set_color $fish_color_host
    printf '%s ' (prompt_hostname)

    if test $SHLVL -gt 1
        set_color -o brcyan
        printf '%s ' $SHLVL
    end

    set_color $fish_color_cwd
    printf '%s' (prompt_pwd)

    set -l git_sha (git rev-parse --short HEAD 2>/dev/null)
    if test $status -eq 0
        set_color -o brgreen
        set -l git_branch (git symbolic-ref --short HEAD 2>/dev/null)
        if test $status -eq 0
            printf ' %s' $git_branch
        else
            printf ' %s' $git_sha
        end
    end

    set_color -o brblack
    printf ' %s' (jobs -c | tail -n+1)

    set_color normal
    printf '\n> '
end
