function fish_prompt -d "Write out the prompt"
    printf '%s@%s %s%s%s > ' $USER $hostname \
        (set_color $fish_color_cwd) (prompt_pwd) (set_color normal)
end
if test -f ~/.config/fish/colors.fish
    source ~/.config/fish/colors.fish
end
if status is-interactive # Commands to run in interactive sessions can go here

    set fish_greeting




    # Aliases
    alias ls 'eza --icons'
    alias ff='fastfetch'
    alias c='clear'
    alias pacman='sudo pacman'
    alias cd..='cd ..'
    alias ..='cd ..'
    alias ...='cd ../../'
    alias ....='cd ../../../'
    alias .....='cd ../../../'
    alias update='pacman -Syu --noconfirm && yay -Syu --noconfirm'
    alias vi='nvim'
end
