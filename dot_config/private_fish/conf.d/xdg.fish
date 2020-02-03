set -q XDG_CONFIG_HOME || set -gx XDG_CONFIG_HOME $HOME/.config
set -q XDG_CACHE_HOME || set -gx XDG_CACHE_HOME $HOME/.cache

# XDG_DATA_DIRS additions
set -l dirs_to_add /var/lib/snapd/desktop
set -l data_dirs (string split ':' $XDG_DATA_DIRS)
for dir in dirs_to_add
    if test -d $dir && not contains $dir $data_dirs
        set -gx XDG_DATA_DIRS "$XDG_DATA_DIRS:/var/lib/snapd/desktop"
    end
end
