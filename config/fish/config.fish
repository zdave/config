if status is-login
    umask 022
    set -x PATH ~/bin $PATH # Bootstrapping...
    bash-source ~/.profile-env
end

if status is-interactive
    set fish_greeting

    set fish_color_error -o brred
    set fish_color_command -o brwhite
    set fish_color_end -o brcyan
    set fish_color_param normal
    set fish_color_comment brblack
    set fish_color_search_match --background=brblack
    set fish_color_operator -o bryellow
    set fish_color_escape -o brmagenta
    set fish_color_quote normal
    set fish_color_redirection green
    set fish_color_autosuggestion brblack
    set fish_color_selection --background=brblack
    set fish_color_valid_path --underline

    set fish_pager_color_prefix -o brwhite
    set fish_pager_color_completion normal
    set fish_pager_color_description brblack
    set fish_pager_color_progress normal

    set fish_color_host -o brblue
    set fish_color_cwd -o bryellow
end
