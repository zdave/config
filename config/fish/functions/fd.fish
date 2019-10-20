function fd -w fdfind
    if isatty stdout
        fdfind -c always $argv | less -RFX
    else
        fdfind $argv
    end
end
