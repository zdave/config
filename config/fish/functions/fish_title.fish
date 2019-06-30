function fish_title
    printf '%s' $hostname
    printf ' %s' (pwd-collapse-home) $argv[1]
end
