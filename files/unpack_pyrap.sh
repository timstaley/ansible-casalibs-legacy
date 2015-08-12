#!/bin/bash

unpack_pth_file() {
    pth_file=${1} #path to .pth file.
    target_dir=${2} #e.g. /some/versioned/build/lib/python2.7/site-packages
    mkdir -p "$target_dir"
    #.pth file paths can be absolute, or relative to the .pth file.
    #To deal with both cases, we cd to the same directory as the .pth file
    #Carefully ensuring that our path parameters updated accordingly.
    #Make target dir an absolute path:
    target_dir=$(cd ${target_dir} && pwd -P)
    unpack_pth_file_startdir="$(pwd)"
    cd $(dirname ${pth_file})
    pth_file=$(basename ${pth_file})
#    echo "PWD: $(pwd)"
    for word in $(<$pth_file); do
        if [[ ${word: -4} == ".egg" && -d ${word} ]]; then
#            echo "${word} is a valid egg dir"
            eggdir=${word}
            for pkgdir in $(find -L $eggdir/* -mindepth 0 -maxdepth 0 -type d); do
                if [[ $(basename $pkgdir) != EGG-INFO ]] ; then
#                    echo "Found '$(basename $pkgdir)' in $pkgdir"
                    cp -r "$pkgdir" "$target_dir"
                fi
            done
        fi
    done
    cd "${unpack_pth_file_startdir}"
}

unpack_pth_file $1 $2