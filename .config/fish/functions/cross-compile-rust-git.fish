function cross-compile-rust-git
    set target (echo $argv | awk -F '/' '{print $NF}')
    git clone --depth=1 $argv
    cd $target
    set binary (
        set tmp (taplo get -f Cargo.toml 'bin[0].name' 2> /dev/null)
        if test $tmp
            echo $tmp
        else
            echo $target
        end
    )
    cp -r ~/download/.cargo ~/download/$target

    for toolchain in (find "toolchain" .)
        rm -rf $toolchain
    end

    cargo build --release --locked
    cp target/armv7-unknown-linux-gnueabihf/release/$binary ~/compiled/
    cd ..
    rm -rf $target                                                                                                                                                              
end
