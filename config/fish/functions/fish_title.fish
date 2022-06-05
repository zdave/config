function fish_title
    printf '%s' (shorten-hostname $hostname)
    printf ' %s' (pwd-collapse-home) $argv[1]
end
