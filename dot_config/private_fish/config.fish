set PATH ~/.local/bin ~/.npm-global/bin ~/Android/Sdk/tools $PATH
set DOTNET_CLI_TELEMETRY_OPTOUT 1
set EDITOR "nvim"

set fish_emoji_width 2

kitty + complete setup fish | source

set PHYSIOTEC_HOME ~/Developer/workspace/physiotec

alias adb "android adb"
alias ghc "stack exec -- ghc"
alias ghci "stack exec -- ghci"
alias cdphys "cd $PHYSIOTEC_HOME"
alias ls "ls --human-readable --group-directories-first --classify --color=auto --hyperlink=auto"
alias less "less -R"

# The next line updates PATH for the Google Cloud SDK.
bass source '~/Developer/google-cloud-sdk/path.bash.inc'

# The next line enables shell command completion for gcloud.
bass source '~/Developer/google-cloud-sdk/completion.bash.inc'
