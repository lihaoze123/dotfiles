function set_bing_wallpaper
    set wallpaper_path "$HOME/.background"
    if not test -d $wallpaper_path
        mkdir -p $wallpaper_path
    end

    set bing_wallpaper_url (curl -s "https://global.bing.com/HPImageArchive.aspx?format=js&idx=0&n=1&pid=hp&uhd=1&uhdwidth=1920&uhdheight=1080&setmkt=zh" | jq -r '.images[0].url')
    if not string match -q "http*" $bing_wallpaper_url
        set bing_wallpaper_url "https://global.bing.com$bing_wallpaper_url"
    end

    set wallpaper_file "$wallpaper_path/wallpaper.jpg"
    curl -s $bing_wallpaper_url -o $wallpaper_file
    feh --bg-scale $wallpaper_file
end
