function fish_title
    printf '%s@%s %s %s' (whoami) (hostname) (pwd-collapse-home) $argv[1]
end
