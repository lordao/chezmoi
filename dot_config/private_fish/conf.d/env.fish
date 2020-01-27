set myPaths ~/.local/bin ~/.npm-global/bin ~/Android/Sdk/tools
for path in $myPath
    if not contains $path $PATH
        set -gx PATH $path $PATH
    end
end
set DOTNET_CLI_TELEMETRY_OPTOUT 1
set EDITOR "nvim"
