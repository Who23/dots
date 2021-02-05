these are the nessecary files for my spotify widget in pecan. 
It does not include the whole config for all of my widgets

to install:
- copy `media.jsx` and `scripts/media` into the `pecan` / `pecan/scripts` folder
- add - don't replace - the contents of `style.css` into `pecan/style.css`
- you will get prompted for osascript to control spotify - allow it.

If you have the default config, you might need to move the date widget from the center, otherwise this widget will overlap with it.

you can customize the refresh time in `media.jsx` - mine is set pretty high at 10s.
