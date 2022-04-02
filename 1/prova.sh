files=$(find .)

for item in ${files[@]} ; do

    if [ -L $item ] ; then
        echo "$item è un link simbolico"
    fi

    if [ -f $item ] && [ ! -L $item ] ; then
        echo "$item è un file"
    fi
done