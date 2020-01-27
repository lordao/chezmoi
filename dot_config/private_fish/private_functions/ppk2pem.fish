function ppk2pem --argument-names "file"
    puttygen $file -O private-openssh -o (string replace "ppk" "pem" $file)
end
