function shorten-hostname
    string replace -r -- '\..*' '' $argv
end
