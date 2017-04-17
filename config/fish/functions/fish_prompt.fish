function fish_prompt
    set s $status
    if test $s -ne 0
        set_color -o red
        printf '%s ' $s
    end

    set_color -o black
    printf '%s ' (date '+%H:%M')

    set_color -o blue
    printf '%s@%s ' (whoami) (hostname)

    set_color -o yellow
    set d (pwd)
    if test $d = $HOME
        printf '~'
    else
        set l (string length $HOME/)
        if test (string sub -l $l $d) = $HOME/
            printf '~%s' (string sub -s $l $d)
        else
            printf '%s' $d
        end
    end

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
