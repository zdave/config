function agent
    if test -e $SSH_AUTH_SOCK; and not nc -Uz $SSH_AUTH_SOCK ^/dev/null
        rm $SSH_AUTH_SOCK
    end
    if not test -e $SSH_AUTH_SOCK
        ssh-agent -a $SSH_AUTH_SOCK >/dev/null
    end
end
