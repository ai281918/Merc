# import pythoncom 
# import pyHook 
import time 
import win32api 
import win32con 
import random

while True:
    win32api.mouse_event(win32con.MOUSEEVENTF_LEFTDOWN, 0, 0) 
    time.sleep(0.05) 
    win32api.mouse_event(win32con.MOUSEEVENTF_LEFTUP, 0, 0) 
    time.sleep(random.randint(5,10))
