function fish_title
    printf '%s' (prompt_hostname)
    printf ' %s' (pwd-collapse-home) $argv[1]
end
