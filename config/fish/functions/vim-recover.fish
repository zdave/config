function vim-recover
    set -l swp_glob '*.sw[mnop]'

    find . -name $swp_glob -exec vim -r '{}' -c q \;

    read -l yn -p 'echo \'Delete swap files? \'' -n 1
    if test $yn = y
        find . -name $swp_glob -delete
    end
end
