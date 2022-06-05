if type -fq fd
    function fd
        if isatty stdout
            command fd -c always $argv | less -RFX
        else
            command fd $argv
        end
    end
end
