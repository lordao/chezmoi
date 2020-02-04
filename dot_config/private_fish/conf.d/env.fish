set -l my_paths ~/.local/bin ~/.npm-global/bin ~/Android/Sdk/tools
for path in $my_paths
    if not contains $path $PATH
        set -gx PATH $path $PATH
    end
end
set DOTNET_CLI_TELEMETRY_OPTOUT 1
set EDITOR nvim
