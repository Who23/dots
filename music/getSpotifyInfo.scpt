tell application "Spotify"
    set pos to round(player position) as string
    set state to player state
    tell current track
        set durMod to (round(duration / 1000))
        return name & "@" & artist & "@" & pos & "@" & durMod & "@" & state
    end tell
end tell