function fish_title
    printf '%s' (prompt_hostname)
    printf ' %s' (prompt_pwd) $argv[1]
end
