To run malware, copy all to any removeable media, start lnk.bat and then click on Documents shortcut


How it works?

autorun.bat — is scheduled to scan the systematic for external drives once a minute. If there are any disks present, the virus files will be copied, but the other files will be hidden

infect.bat — copies the malware to local disk

launch.bat — runs all other bat files

lnk.bat — marks all the files on the D:\...Z:\ disks as hidden an creates a link which is the only shown file. But instead of a path the link starts the launch.bat

move_globalization.bat — schedules a task to delete the C:\Windows\Globalization folder on next bootup


Why it works?
The script is put into a *.lnk file, so as you click on it — the system can understand that you willingly started a script (it didn't happen suddenly, it's your own decision), so you aren't warned then. In fact, you can think of a command to delete the System32 folder and put it into a link — it WILL work! But in that way there is no method to spread the malware via pendrives.




Also, as you have read, the launch of a virus only schedules a task. So the device works properly till a reboot. 
After rebooting you can successfully log in. Only after that the scheduled task can be done.
After the folder is moved, the system still has an exact copy of it in its RAM. Only within about 10 minutes the system begins a slight self-destruction.
On the next reboot the system cannot locate the critical C:\Windows\Globalization folder, so you may be happy to see blank screen.



Have a nice day <3
Use with care!)))
