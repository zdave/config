if type -fq rg
    function rg
        if isatty stdout
            command rg -p $argv | less -RFX
        else
            command rg $argv
        end
    end
end
