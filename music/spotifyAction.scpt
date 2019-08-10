on run argv
    tell application "Spotify"
        if (item 1 of argv is equal to "0") then
            previous track
        else if (item 1 of argv is equal to "1") then
            playpause
        else if (item 1 of argv is equal to "2") then
            next track
        end if
    end tell
end run