#TODO: rewrite this script for readability + performance

import subprocess, sys, tty, time, threading

width = 80
print()
print()

selected = 1
playpause = {'playing': '\uf04c', 'paused': '\uf04b', 'stopped':' '}


info = str(subprocess.run(["osascript", "getSpotifyInfo.scpt"], capture_output=True).stdout).strip('''\\n'"b''').split("@")
print(info)
tiles = round((int(info[2])/int(info[3])) * width)
buttons = ["\uf04a", playpause[info[4]], "\uf04e"]
buttons[selected] = '\u001b[32m' + buttons[selected] + '\u001b[0m'

def display(info, tiles, buttons):
    sys.stdout.write("\u001b[2K\u001b[2A\u001b[2K\u001b[100D")
    sys.stdout.write("[" + "█"*tiles + "|"*(width-tiles) + "]\n")
    sys.stdout.write("\r\u001b[2K"+ " "*19 + buttons[0] + " "*20 + buttons[1] + " "*20 + buttons[2] + "\n\r")

    name = info[0] + " - " + info[1]

    sys.stdout.write( int((width - len(name))/2)*" " + name )
    sys.stdout.flush()

class displayThread(threading.Thread):
    def __init__(self):
        threading.Thread.__init__(self)
        
    def run(self):
        global selected, info, tiles

        while True:
            info = str(subprocess.run(["osascript", "getSpotifyInfo.scpt"], capture_output=True).stdout)\
                .strip('''\\n'"b''')\
                .split("@")
            tiles = round((int(info[2])/int(info[3])) * width)
            buttons = ["\uf04a", playpause[info[4]], "\uf04e"]
            buttons[selected] = '\u001b[32m' + buttons[selected] + '\u001b[0m'

            display(info, tiles, buttons)
            
            time.sleep(2)


disp = displayThread()
disp.start()

tty.setraw(sys.stdin)

while True:
    yeetus = sys.stdin.read(1)

    if yeetus in ['j', 'k', 'l']:
        selected = ['j', 'k', 'l'].index(yeetus)
        buttons = ["\uf04a", playpause[info[4]], "\uf04e"]
        buttons[selected] = '\u001b[32m' + buttons[selected] + '\u001b[0m'
        display(info, tiles, buttons)

    elif yeetus == ";":
        subprocess.run(["osascript", "spotifyAction.scpt", str(selected)])
        display(info, tiles, buttons)

disp.join()
