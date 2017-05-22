function fish_title
    printf '%s@%s %s %s' (whoami) (hostname) (pwd_collapse_home) $argv[1]
end
