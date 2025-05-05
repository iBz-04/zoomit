- I made this to automatically open zoom and join my online classes for me so i dont marked absent 



#### steps
**After the gui opens**

-In the left-hand tree, click on Task Scheduler Library.
-In the center pane you'll see a list of all your tasks. 
-Scroll (or sort by Name) until you spot Zoom Auto Join.

# Getting Started

## Setup

1. Clone the repository:
   ```powershell
   git clone <YOUR_REPOSITORY_URL>
   cd zoomit
   ```

2. Configure meeting credentials:
   - Open `config/meeting.env` and set `MEETING_ID` and `PASSCODE`.

3. Test the join script:
   ```powershell
   powershell.exe -NoLogo -WindowStyle Hidden -File .\scripts\join_zoom.ps1
   ```

4. Schedule the auto-join task:

   **Via Task Scheduler GUI:**
   1. Open Task Scheduler, use `taskschd.msc`.
   2. Select **Import Task...** and choose `scripts/schedule/windows_task.xml`.
   3. Update the script path in the **Actions** tab if needed.

   **Via command line:**
   ```powershell
   schtasks /Create /TN "Zoom Auto Join" /TR "powershell.exe -NoLogo -WindowStyle Hidden -File C:\path\to\zoomit\scripts\join_zoom.ps1" /SC WEEKLY /D TUE /ST 17:00 /F
   ```

5. (Optional) In the trigger settings, enable **Synchronize across time zones** to ensure correct firing when you travel.

## Prerequisites

- Windows 10 or newer
- PowerShell 3.0 or higher
- Zoom desktop client installed

## Project Setup

1. Clone the repository:
   ```powershell
   git clone <YOUR_REPOSITORY_URL>
   cd zoomit
   ```
2. Create and configure the meeting credentials file:
   ```powershell
   copy config\meeting.env example config\meeting.env
   notepad config\meeting.env
   ```
   In the file, set:
   ```env
   MEETING_ID=<your_meeting_id>
   PASSCODE=<your_passcode>
   ```
3. Test the join script:
   ```powershell
   powershell.exe -NoLogo -WindowStyle Hidden -File .\scripts\join_zoom.ps1
   ```
4. Schedule the auto-join task (weekly on Tuesdays at 17:00):
   ```powershell
   schtasks /Create /TN "Zoom Auto Join" /TR "powershell.exe -NoLogo -WindowStyle Hidden -File C:\Users\RTX\Desktop\zoomit\scripts\join_zoom.ps1" /SC WEEKLY /D TUE /ST 17:00 /F
   ```