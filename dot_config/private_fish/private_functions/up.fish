function up
    set cur_dir (pwd)
    if test $argv[1] = "git"
        while ! test -d .git
            root-backtrack; or break
            cd ..
        end
        return
    end
    for i in (seq $argv[1] -1 1)
        cd ..
        root-backtrack || break
    end
end

function root-backtrack
    if test (pwd) = "/"
        echo "Hit root, going back"
        cd $cur_dir
        return -1
    end
end
