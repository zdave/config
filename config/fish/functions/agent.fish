function agent
    if test -e $SSH_AUTH_SOCK; and not nc -Uz $SSH_AUTH_SOCK ^/dev/null
        rm $SSH_AUTH_SOCK
    end
    if not test -e $SSH_AUTH_SOCK
        ssh-agent -a $SSH_AUTH_SOCK >/dev/null
    end

    set -l loaded (ssh-add -l | cut -d' ' -f3)
    for id in ~/.ssh/id_{ecdsa,rsa}
        if test -f $id; and not contains $id $loaded
            ssh-add -q $id
        end
    end
end
