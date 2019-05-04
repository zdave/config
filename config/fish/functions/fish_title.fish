function fish_title
    printf '%s %s %s' $hostname (pwd-collapse-home) $argv[1]
end
