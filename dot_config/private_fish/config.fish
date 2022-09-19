set fish_emoji_width 2
if command -q kitty
    kitty + complete setup fish | source
end
if command -q starship
    starship init fish | source
end
