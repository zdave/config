umask 022

set -e fish_greeting

set fish_color_error -o red
set fish_color_command -o white
set fish_color_end -o cyan
set fish_color_param normal
set fish_color_comment brblack
set fish_color_search_match --background=brblack
set fish_color_operator -o yellow
set fish_color_escape -o magenta
set fish_color_quote normal
set fish_color_redirection green
set fish_color_autosuggestion brblack
set fish_color_selection --background=brblack
set fish_color_valid_path --underline

set fish_pager_color_prefix -o white
set fish_pager_color_completion normal
set fish_pager_color_description brblack
set fish_pager_color_progress normal

set fish_color_user -o blue
set fish_color_host -o blue
set fish_color_cwd -o yellow

if grep Microsoft /proc/version >/dev/null
    # WSL. Assume X server running on :0...
    set -x DISPLAY :0
end
set -x EDITOR vim
