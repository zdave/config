function pwd-collapse-home
    if test $PWD = $HOME
        echo '~'
    else
        set -l l (string length $HOME/)
        if test (string sub -l $l $PWD) = $HOME/
            echo '~'(string sub -s $l $PWD)
        else
            echo $PWD
        end
    end
end
