Ethical Virus Quarantine Tool
This simple batch script scans your system for potentially suspicious files with specific extensions (such as .exe, .dll, .bat, etc.) and moves them into a quarantine folder. It then compresses these files into a ZIP archive for easy inspection, allowing you to review files that might be viruses. This script is intended for educational purposes and should not be used as a replacement for professional antivirus software.

How It Works
The script scans a specified directory (default is C:\) for files with extensions commonly associated with viruses.
All found files are moved into a quarantine folder on your Desktop.
A log file listing the quarantined files is created on the Desktop.
The quarantined files are then zipped into a single archive for review.
Features
Scans for common suspicious file types such as .exe, .dll, .bat, .vbs, .js, and more.
Automatically moves suspicious files into a quarantine folder for further inspection.
Creates a ZIP file of the quarantined files for easy access.
Generates a log file for detailed tracking of which files were quarantined.
How to Use
Prerequisites
You need Windows with administrator privileges to run the script properly.
Ensure you have PowerShell installed for the compression function (most modern Windows versions come with it).
Steps to Run:
Download the Script: Clone this repository or download the virus_quarantine.bat file to your computer.
Run as Administrator:
Right-click on the virus_quarantine.bat file and select Run as administrator. This is necessary for the script to access all files on your system.
Review the Quarantine:
After the scan completes, the suspicious files will be moved to a folder named VirusQuarantine on your Desktop.
The log file virus_log.txt on the Desktop will list all the quarantined files.
A ZIP file named quarantine.zip will also be created on your Desktop containing the suspicious files for easy inspection.
Inspect or Delete:
You can inspect the quarantined files to see if they are indeed viruses. Be careful not to execute any suspicious files.
After inspection, if you are certain they are malicious, you can delete them from the quarantine folder.
Example
Run the Script:

View Quarantine Folder:

After the scan, open VirusQuarantine on your Desktop.
Review the ZIP file:

The quarantine.zip file will contain all the quarantined files for easy review.
Limitations
This script only checks for file extensions associated with potentially harmful files. It does not analyze file contents or signatures like traditional antivirus software.
Some files may be false positives and should be reviewed manually before deletion.
The script cannot detect all types of malware. For complete protection, use professional antivirus software.
License
This project is licensed under the MIT License - see the LICENSE file for details.


