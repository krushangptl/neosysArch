if status is-interactive
    starship init fish | source

    alias vim=nvim
    command -v eza &>/dev/null && alias ls='eza --icons --group-directories-first'

    function fish_greeting
    end

    # --- eza (24-bit) ---
    set -gx EZA_COLORS "di=38;2;161;196;253:ex=38;2;46;211;160:ln=38;2;255;193;204:da=38;2;128;136;168:sn=38;2;200;162;240:uu=38;2;245;183;0:*.zip=38;2;255;59;92:*.tar=38;2;255;59;92:*.gz=38;2;255;59;92"
end
