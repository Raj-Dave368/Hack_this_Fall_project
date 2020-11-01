# omNS


# add credentials using firebase_admin.credentials
from firebase_admin import credentials
cred = credentials.Certificate("./Secret/key.json")

# initialise app
import firebase_admin
app = firebase_admin.initialize_app(cred, {'databaseURL': "https://handle-ppt.firebaseio.com/"})

# get reference
from firebase_admin import db
reference_to_cmd_entry = db.reference("cmd")

from win32gui import GetForegroundWindow
from win32gui import GetWindowText

import pyautogui

def func(Object: firebase_admin.db.Event):
    print(Object.data, Object.path, Object.event_type)
    direction = Object.data

    if direction == "up":
        print("press up")
        pyautogui.press("up")
        reference_to_cmd_entry.set("")

    elif direction == "down":
        print("press down")
        pyautogui.press("down")
        reference_to_cmd_entry.set("")


reference_to_cmd_entry.listen(callback=func)
