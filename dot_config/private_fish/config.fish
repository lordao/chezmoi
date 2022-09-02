set fish_emoji_width 2
kitty + complete setup fish | source
if command -q starship
    starship init fish | source
end
