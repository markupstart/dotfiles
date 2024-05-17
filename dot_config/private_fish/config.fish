if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting "Welcome, Mark"

abbr -a -- ls 'eza --icons -F -H --group-directories-first --git -1'
abbr -a -- la 'eza --icons -F -H -a --group-directories-first --git -1'
abbr -a -- ll 'eza --icons -F -H -a -l --group-directories-first --git'
abbr -a -- clr 'clear && /usr/bin/fastfetch -c /usr/share/ublue-os/bazzite/fastfetch.jsonc --logo-color-1 94 --logo-color-2 47 --logo-color-3 95 --logo-color-4 0 --logo-color-5 8 --logo-color-6 55'

function starship_transient_rprompt_func
  starship module time
end
starship init fish | source
enable_transience

zoxide init fish | source
