#############
# CHANGELOG #
#############
Legend:
 + Addition    - Removal   
 ! Bug fix     * Update/improvement
 . No change   / Change (non bug-fix)

Version number legend:
  x.x.x
  | | |
  | | program/definition update, minor change, or bugfix (critical or regular)
  | regular release or feature change
  major feature change



########################
# v4.7.2 // 2015-02-10 #
########################
tron.bat                         v4.7.2
 * stage_0_prep:sleep: Add disabling of system sleep when laptop lid closes (Vista and up). Thanks to /u/ComputersByte
 * stage_0_prep:sleep: Remove redundant code block which tested for Windows XP and Server 2003 separately. Now test for both SKUs in one block
 / stage_0_prep:wmi:   Move WMI repair four jobs earlier since so much depends on it functioning correctly. May pull it out of Stage 0 at some point and place it in pre-run prep and checks

STAGE 0: Prep
 . Rkill                         v2.7.0.0
 . ProcessKiller                 v1.0
 . TDSS Killer                   v3.0.0.44
 . erunt                         v1.1j

STAGE 1: Tempclean
 * CCLeaner                      v5.02.5101
 . BleachBit                     v1.6
 . TempFileCleanup               v1.0.0-TRON 
 . USB Device Cleanup            v0.8.1

STAGE 2: De-bloat
 . \resources\stage_2_de-bloat\programs_to_target.txt
 . \resources\stage_2_de-bloat\programs_to_target_by_GUID.bat
	
STAGE 3: Disinfect
 . RogueKiller                   v10.2.0.0
 * Sophos Virus Removal Tool     v2.5.4, update defs
 * Vipre Rescue Scanner          v7.0.7.8, update defs
 . Malwarebytes Anti-Malware     v2.0.4.1028

STAGE 4: Patch
 . 7-Zip                         v9.38         (multi-language)
 * Adobe Flash Player            v16.0.0.305   (language ignored)
 . Adobe Reader                  v11.0.10      (English-only; replace with your language version if necessary)
 . Java Runtime Environment      8u31          (language ignored)
 . Windows updates               Pulled down live with the command 'wuauclt /detectnow /updatenow'
 
STAGE 5: Optimize
 . smartctl                      v6.2 2013-07-26 r3841
 . Defraggler                    v2.18.0.945

STAGE 6: Wrap-up
 . SwithMail.exe                 v2.1.5.0
 
STAGE 7: Manual tools
 . ADSSpy                        v1.11.0.0
 * AdwCleaner                    v4.1.1.0
 . aswMBR                        v1.0.1.2252
 . autoruns                      v12.03
 * ComboFix                      v15.2.9.1
 . gmer                          v2.1.19357
 . Junkware Removal Tool         v6.4.2
 . Malwarebytes Anti-Rootkit     v1.08.3.1004
 . Net Adapter Repair            v1.2
 . ServicesRepair.exe            v1.0.0.3
 . VirusTotal uploader tool      v2.2


########################
# v4.7.1 // 2015-02-04 #
########################
tron.bat                         v4.7.1
 ! stage_0_prep:bugfix: Fix spelling error in call to new TDSSK version
 ! stage_0_prep:bugfix: Fix spelling error in help (-h) menu. Thanks to...someone, can't remember who. If it was you let me know and I'll add you to the change log

STAGE 3: Disinfect
 * Sophos Virus Removal Tool     v2.5.4, update defs
 * Vipre Rescue Scanner          v7.0.7.8, update defs

STAGE 7: Manual tools
 * ComboFix                      v15.2.2.1
 * Junkware Removal Tool         v6.4.2


########################
# v4.7.0 // 2015-01-28 #
########################
tron.bat                         v4.7.0
 + stage_0_prep:update:    Add automatic SHA256 integrity checking of new version download from the auto-updater. Tron will warn if integrity check fails and delete the failed download
 * stage_0_prep:update:    Replace MD5 with SHA256 for update check hash algorithm. This change removes reliance on MD5 in all components of Tron. We'll keep md5sums.txt updated for a while because old versions still look for it, but eventually it will be removed. Thanks to /u/tr0nnie
 + stage_4_patch:feature:  Add -sw switch and associated SKIP_WINDOWS_UPDATES variable to allow skipping an attempt at doing Windows Updates. Thanks to /u/fatbastard79
 ! stage_4_patch:bugfix:   Fix minor visual error where message about SKIP_PATCHES being set would incorrectly show value of the SKIP_DEFRAG variable
 ! stage_6_wrap-up:bugfix: Fix error condition where SELF_DESTRUCT would fail if there were spaces in the path to Tron

STAGE 0: Prep
 . Rkill                         v2.7.0.0
 . ProcessKiller                 v1.0
 * TDSS Killer                   v3.0.0.44
 . erunt                         v1.1j

STAGE 1: Tempclean
 . CCLeaner                      v5.01.5075
 . BleachBit                     v1.6
 . TempFileCleanup               v1.0.0-TRON 
 . USB Device Cleanup            v0.8.1

STAGE 2: De-bloat
 . \resources\stage_2_de-bloat\programs_to_target.txt
 . \resources\stage_2_de-bloat\programs_to_target_by_GUID.bat
	
STAGE 3: Disinfect
 * RogueKiller                   v10.2.0.0
 * Sophos Virus Removal Tool     v2.5.4, update defs
 * Vipre Rescue Scanner          v7.0.7.8, update defs
 . Malwarebytes Anti-Malware     v2.0.4.1028

STAGE 4: Patch
 . 7-Zip                         v9.38         (multi-language)
 * Adobe Flash Player            v16.0.0.296   (language ignored)
 . Adobe Reader                  v11.0.10      (English-only; replace with your language version if necessary)
 . Java Runtime Environment      8u31          (language ignored)
 . Windows updates               Pulled down live with the command 'wuauclt /detectnow /updatenow'
 
STAGE 5: Optimize
 . smartctl                      v6.2 2013-07-26 r3841
 . Defraggler                    v2.18.0.945

STAGE 6: Wrap-up
 . SwithMail.exe                 v2.1.5.0
 
STAGE 7: Manual tools
 . ADSSpy                        v1.11.0.0
 * AdwCleaner                    v4.1.0.9
 . aswMBR                        v1.0.1.2252
 . autoruns                      v12.03
 * ComboFix                      v15.1.28.1
 . gmer                          v2.1.19357
 . Junkware Removal Tool         v6.4.1
 * Malwarebytes Anti-Rootkit     v1.08.3.1004
 . Net Adapter Repair            v1.2
 . ServicesRepair.exe            v1.0.0.3
 . VirusTotal uploader tool      v2.2


########################
# v4.6.0 // 2015-01-23 #
########################
tron.bat                         v4.6.0
 ! stage_0_prep:bugfix:  Fix crash bug where Tron would break when wget'ing md5sums.txt from the repo server if local username had an ampersand (&) character in it. Thanks to /u/buggg
 ! stage_4_patch:bugfix: Fix minor aesthetic bug where an error was tossed if we tried to add the MSI registry key while not in safe mode
 / stage_3_disinfect:    Move MBAM installation to beginning of stage 3 to allow user to click "scan" earlier in the process instead of waiting for Vipre and Sophos to complete. Thanks to /u/Reverent
 * stage_4_patch:        Update links to reflect new versions of 7-Zip and Adobe Flash. Thanks to /u/Reverent

STAGE 0: Prep
 . Rkill                         v2.7.0.0
 . ProcessKiller                 v1.0
 . TDSS Killer                   v3.0.0.42
 . erunt                         v1.1j

STAGE 1: Tempclean
 . CCLeaner                      v5.01.5075
 . BleachBit                     v1.6
 . TempFileCleanup               v1.0.0-TRON 
 . USB Device Cleanup            v0.8.1

STAGE 2: De-bloat
 . \resources\stage_2_de-bloat\programs_to_target.txt
 . \resources\stage_2_de-bloat\programs_to_target_by_GUID.bat
	
STAGE 3: Disinfect
 * RogueKiller                   v10.2.0.0
 * Sophos Virus Removal Tool     v2.5.4, update defs
 * Vipre Rescue Scanner          v7.0.7.8, update defs
 . Malwarebytes Anti-Malware     v2.0.4.1028

STAGE 4: Patch
 * 7-Zip                         v9.38         (multi-language)
 * Adobe Flash Player            v16.0.0.287   (language ignored)
 . Adobe Reader                  v11.0.10      (English-only; replace with your language version if necessary)
 * Java Runtime Environment      8u31          (language ignored)
 . Windows updates               Pulled down live with the command 'wuauclt /detectnow /updatenow'
 
STAGE 5: Optimize
 . smartctl                      v6.2 2013-07-26 r3841
 . Defraggler                    v2.18.0.945

STAGE 6: Wrap-up
 . SwithMail.exe                 v2.1.5.0
 
STAGE 7: Manual tools
 . ADSSpy                        v1.11.0.0
 * AdwCleaner                    v4.1.0.8
 * aswMBR                        v1.0.1.2252
 * autoruns                      v12.03
 * ComboFix                      v15.1.22.2
 . gmer                          v2.1.19357
 . Junkware Removal Tool         v6.4.1
 . Malwarebytes Anti-Rootkit     v1.08.2.1001
 + Net Adapter Repair            v1.2          // Utility to repair network issues
 . ServicesRepair.exe            v1.0.0.3
 . VirusTotal uploader tool      v2.2


########################
# v4.5.1 // 2015-01-15 #
########################
tron.bat                         v4.5.1
 ! stage_0_prep:bugfix: Fix critical bug with missing bracket in update checker


########################
# v4.5.0 // 2015-01-14 #
########################
tron.bat                         v4.5.0
 + stage_0_prep:      Add rudimentary auto-update function. Tron will now ask if you want it to download the latest release for you, then self-destruct the current copy when the download is finished. Downloads to current users desktop
 + stage_2_de-bloat:  Add targeting of some specific GUIDs for removal. Edit the file '\resources\stage_2_de-bloat\programs_to_target_by_GUID.bat' to add or remove entries from the list. Thanks to /u/tuxedo_jack
 * stage_3_disinfect: Add short message to Vipre and Sophos scans explaning the scan is in progress. Thanks to /u/famouslastwords

STAGE 0: Prep
 . Rkill                         v2.7.0.0
 . ProcessKiller                 v1.0
 . TDSS Killer                   v3.0.0.42
 . erunt                         v1.1j

STAGE 1: Tempclean
 . CCLeaner                      v5.01.5075
 . BleachBit                     v1.6
 . TempFileCleanup               v1.0.0-TRON 
 . USB Device Cleanup            v0.8.1

STAGE 2: De-bloat
 * \resources\stage_2_de-bloat\programs_to_target.txt
    * Removal of some redundant entries, should grant small speed increase
 + \resources\stage_2_de-bloat\programs_to_target_by_GUID.bat
    ` This file contains specific GUIDs to target. Initial list thanks to /u/tuxedo_jack
	
STAGE 3: Disinfect
 . RogueKiller                   v10.1.1.0
 * Sophos Virus Removal Tool     v2.5.4, update defs
 * Vipre Rescue Scanner          v7.0.7.8, update defs
 . Malwarebytes Anti-Malware     v2.0.4.1028

STAGE 4: Patch
 . 7-Zip                         v9.36         (multi-language)
 * Adobe Flash Player            v16.0.0.257   (language ignored)
 . Adobe Reader                  v11.0.10      (English-only; replace with your language version if necessary)
 . Java Runtime Environment      8u25          (language ignored)
 . Windows updates               <pulled down live>
 
STAGE 5: Optimize
 . smartctl                      v6.2 2013-07-26 r3841
 . Defraggler                    v2.18.0.945

STAGE 6: Wrap-up
 . SwithMail.exe                 v2.1.5.0
 
STAGE 7: Manual tools
 . ADSSpy                        v1.11.0.0
 . AdwCleaner                    v4.1.0.6
 . aswMBR                        v1.0.1.2041
 . autoruns                      v12.01
 . ComboFix                      v15.1.8.1
 . gmer                          v2.1.19357
 . Junkware Removal Tool         v6.4.1
 . Malwarebytes Anti-Rootkit     v1.08.2.1001
 . ServicesRepair.exe            v1.0.0.3
 . VirusTotal uploader tool      v2.2


########################
# v4.4.0 // 2015-01-12 #
########################
tron.bat                         v4.4.0
 + stage_1_tempcleanup: Add unused USB device cleanup. Thanks to Uwe Sieber ( www.uwe-sieber.de )
 ! stage_4_patch:flash: Fix broken Flash installer (IE)

STAGE 0: Prep
 * Rkill                         v2.7.0.0
 . ProcessKiller                 v1.0
 * TDSS Killer                   v3.0.0.42
 . erunt                         v1.1j

STAGE 1: Tempclean
 . CCLeaner                      v5.01.5075
 . BleachBit                     v1.6
 * TempFileCleanup               v1.0.0-TRON 
   - Remove many unnecessary sections which aren't applicable to Tron
   - Disable deletion of C:\temp since a lot of people seem to run Tron from there
 + USB Device Cleanup            v0.8.1      // thanks to Uwe Sieber (www.uwe-sieber.de). Cleans out unused USB devices

STAGE 2: De-bloat
Try to remove programs listed here: \resources\stage_2_de-bloat\programs_to_target.txt
 . No changes
	
STAGE 3: Disinfect
 . RogueKiller                   v10.1.1.0
 * Sophos Virus Removal Tool     v2.5.4, update defs
 * Vipre Rescue Scanner          v7.0.7.8, update defs
 . Malwarebytes Anti-Malware     v2.0.4.1028

STAGE 4: Patch
 . 7-Zip                         v9.36         (multi-language)
 . Adobe Flash Player            v16.0.0.235   (language ignored)
 . Adobe Reader                  v11.0.10      (English-only; replace with your language version if necessary)
 . Java Runtime Environment      8u25          (language ignored)
 . Windows updates               <pulled down live>
 
STAGE 5: Optimize
 . smartctl                      v6.2 2013-07-26 r3841
 . Defraggler                    v2.18.0.945

STAGE 6: Wrap-up
 . SwithMail.exe                 v2.1.5.0
 
STAGE 7: Manual tools
 . ADSSpy                        v1.11.0.0
 * AdwCleaner                    v4.1.0.6
 . aswMBR                        v1.0.1.2041
 . autoruns                      v12.01
 * ComboFix                      v 15.1.8.1
 . gmer                          v2.1.19357
 . Junkware Removal Tool         v6.4.1
 + Malwarebytes Anti-Rootkit     v1.08.2.1001
 . ServicesRepair.exe            v1.0.0.3
 - TempFileCleaner               v3.1.9.0
 . VirusTotal uploader tool      v2.2


########################
# v4.3.3 // 2014-12-31 #
########################
tron.bat                         v4.3.3
 / stage_4_patch:7-zip: Update links to reflect new version of 7-Zip. Thanks to /u/Reverent

STAGE 0: Prep
 . Rkill                         v2.6.9.0
 . ProcessKiller                 v1.0
 . TDSS Killer                   v3.0.0.41
 . erunt                         v1.1j
  
STAGE 1: Tempclean
 * CCLeaner                      v5.01.5075
 . BleachBit                     v1.6
 . TempFileCleanup               v3.5.0

STAGE 2: De-bloat
Try to remove programs listed here: \resources\stage_2_de-bloat\programs_to_target.txt
 * Remove and combine some redundant entries. Should grant small speed increase.
	
STAGE 3: Disinfect
 * RogueKiller                   v10.1.1.0
 * Sophos Virus Removal Tool     v2.5.4, update defs
 * Vipre Rescue Scanner          v7.0.7.8, update defs
 . Malwarebytes Anti-Malware     v2.0.4.1028

STAGE 4: Patch
 * 7-Zip                         v9.36         (multi-language)
 . Adobe Flash Player            v16.0.0.235   (language ignored)
 . Adobe Reader                  v11.0.10      (English-only; replace with your language version if necessary)
 . Java Runtime Environment      8u25          (language ignored)
 . Windows updates               <pulled down live>
 
STAGE 5: Optimize
 . smartctl                      v6.2 2013-07-26 r3841
 . Defraggler                    v2.18.0.945
 
STAGE 6: Wrap-up
 . SwithMail.exe                 v2.1.5.0
 
STAGE 7: Manual tools
 . ADSSpy                        v1.11.0.0
 * AdwCleaner                    v4.1.0.6
 . aswMBR                        v1.0.1.2041
 . autoruns                      v12.01
 * ComboFix                      v14.12.30.1
 . gmer                          v2.1.19357
 . Junkware Removal Tool         v6.4.1
 . ServicesRepair.exe            v1.0.0.3
 . TempFileCleaner               v3.1.9.0
 . VirusTotal uploader tool      v2.2


########################
# v4.3.2 // 2014-12-23 #
########################
tron.bat                         v4.3.2
 ! bugfix:                Fix crash condition where script would terminate if run by a user with spaces in the name. Thanks to /u/evileyerex
 * improvement:ssd_check: Check for additional string commonly seen on SSDs: "SandForce". Thanks to /u/Techie4Life83


########################
# v4.3.1 // 2014-12-18 #
########################
tron.bat                         v4.3.1
 ! bugfix: Fix missing escape characters in echo statement near check for -sb flag. Thanks to /u/scan2006, /u/SubtleContradiction and /u/ChristopherSitten
 ! bugfix: Skip update check if running automatically. Thanks to /u/dangolo


########################
# v4.3.0 // 2014-12-17 #
########################
tron.bat                         v4.3.0
 + feature: Add skip debloat flag (-sb) and associated SKIP_DEBLOAT variable. Set to yes to skip de-bloat section
 ! bugfix:  Fix small bug with EULA screen (was requiring typing "I AGREE" twice)
 * update:  Update all binary references to new versions

STAGE 0: Prep
 * Rkill                         v2.6.9.0 // Renamed to explore.exe to avoid malware blocking. Thanks to /u/ExcessiveIrritation
 . ProcessKiller                 v1.0
 . TDSS Killer                   v3.0.0.41
 . erunt                         v1.1j
  
STAGE 1: Tempclean
 . CCLeaner                      v5.00.5050
 . BleachBit                     v1.6
 . TempFileCleanup               v3.5.0

STAGE 2: De-bloat
Try to remove programs listed here: \resources\stage_2_de-bloat\programs_to_target.txt
 . No changes
	
STAGE 3: Disinfect
 * RogueKiller                   v10.1.0.0
 * Sophos Virus Removal Tool     v2.5.4, update defs
 * Vipre Rescue Scanner          v7.0.7.8, update defs
 * Malwarebytes Anti-Malware     v2.0.4.1028

STAGE 4: Patch
 . 7-Zip                         v9.20         (multi-language)
 * Adobe Flash Player            v16.0.0.235   (language ignored)
 * Adobe Reader                  v11.0.10      (English-only; replace with your language version if necessary)
 . Java Runtime Environment      8u25          (language ignored)
 . Windows updates               <pulled down live>
 
STAGE 5: Optimize
 . smartctl                      v6.2 2013-07-26 r3841
 . Defraggler                    v2.18.0.945
 
STAGE 6: Wrap-up
 . SwithMail.exe                 v2.1.5.0
 
STAGE 7: Manual tools
 . ADSSpy                        v1.11.0.0
 . AdwCleaner                    v4.1.0.5
 . aswMBR                        v1.0.1.2041
 . autoruns                      v12.01
 * ComboFix                      v14.12.14.1
 . gmer                          v2.1.19357
 . Junkware Removal Tool         v6.3.9
 . ServicesRepair.exe            v1.0.0.3
 . TempFileCleaner               v3.1.9.0
 . VirusTotal uploader tool      v2.2


########################
# v4.2.1 // 2014-11-30 #
########################
tron.bat                         v4.2.1
 ! bugfix:  Fix broken -x (self-destruct) functionality due to uninitialized variable. Thanks to /u/HittingSmoke
 
  
########################
# v4.2.0 // 2014-11-26 #
########################
tron.bat                         v4.2.0
 + feature: Add -er flag (Email Report) and associated EMAIL_REPORT variable to automatically send an email report when Tron is finished. Requires you to input your SMTP information in \resources\stage_6_wrap-up\email_report\SwithMailSettings.xml. Thanks to /u/bodkov
 + stages:  Add stage_6_wrap-up to support new email report functionality
 / stages:  Rename stage_6_manual_tools to stage_7_manual_tools

STAGE 0: Prep
 . Rkill                         v2.6.8.0
 . ProcessKiller                 v1.0
 . TDSS Killer                   v3.0.0.41
 . erunt                         v1.1j
  
STAGE 1: Tempclean
 * CCLeaner                      v5.00.5050
 * BleachBit                     v1.6
 . TempFileCleanup               v3.5.0

STAGE 2: De-bloat
Try to remove programs listed here: \resources\stage_2_de-bloat\programs_to_target.txt
 . No changes
	
STAGE 3: Disinfect
 . RogueKiller                   v10.0.2.0
 * Sophos Virus Removal Tool     v2.5.3, update defs
 * Vipre Rescue Scanner          v7.0.7.8, update defs
 . Malwarebytes Anti-Malware     v2.0.3.1025

STAGE 4: Patch
 . 7-Zip                         v9.20         (multi-language)
 * Adobe Flash Player            v15.0.0.239   (language ignored)
 . Adobe Reader                  v11.0.09      (English-only; replace with your language version if necessary)
 . Java Runtime Environment      8u25          (language ignored)
 . Windows updates               <pulled down live>
 
STAGE 5: Optimize
 . smartctl                      v6.2 2013-07-26 r3841
 . Defraggler                    v2.18.0.945
 
STAGE 6: Wrap-up
 + SwithMail.exe                 v2.1.5.0
 
STAGE 7: Manual tools
 . ADSSpy                        v1.11.0.0
 * AdwCleaner                    v4.1.0.2
 . aswMBR                        v1.0.1.2041
 . autoruns                      v12.01
 * ComboFix                      v14.11.25.1
 . gmer                          v2.1.19357
 . Junkware Removal Tool         v6.3.9
 . ServicesRepair.exe            v1.0.0.3
 . TempFileCleaner               v3.1.9.0
 . VirusTotal uploader tool      v2.2
 

########################
# v4.1.1 // 2014-11-19 #
########################  
tron.bat                         v4.1.1
 - feature: Remove Notepad++ installation. While it's a great text editor not everyone wants it on their PC, so we just stick to updating common vulnerable apps (Java,Reader,Flash). Thanks to /u/SubtleContradiction

STAGE 1: Tempclean
 . TempFileCleanup               v3.5.0
    * Minor modification to TempFileCleanup sub-script. Disable deletion of Chrome cache since it seems to be causing problems. Will probably remove this script once Bleachbit v1.6 is released. Thanks to /u/easyjet


########################
# v4.1.0 // 2014-11-18 #
########################
tron.bat                         v4.1.0
 + feature: Add -sa flag and associated SKIP_ANTIVIRUS_SCANS variable. Use this to skip Sophos, Vipre and MBAM scans
 + feature: Add -sp flag and associated SKIP_PATCHES variable. Use this to skip patching 7-Zip, Java, and Adobe Flash and Reader
 / feature: Change -s flag (skip defrag) to -sd to fit convention with other skip flags. Undocumented support for -s flag remains for one more version and then will be removed
 - feature: Remove -q flag and associated SHUT_UP variable, due to lack of audio support in Safe Mode

STAGE 0: Prep
 . Rkill                         v2.6.8.0
 . ProcessKiller                 v1.0
 . TDSS Killer                   v3.0.0.41
 . erunt                         v1.1j
 - nircmd                        v2.75
  
STAGE 1: Tempclean
 . CCLeaner                      v4.19.4867
 . BleachBit                     v1.4
 . TempFileCleanup               v3.5.0

STAGE 2: De-bloat
Try to remove programs listed here: \resources\stage_2_de-bloat\programs_to_target.txt
 . No changes
	
STAGE 3: Disinfect
 . RogueKiller                   v10.0.2.0
 * Sophos Virus Removal Tool     v2.5.3, update defs
 * Vipre Rescue Scanner          v7.0.7.8, update defs
 . Malwarebytes Anti-Malware     v2.0.3.1025

STAGE 4: Patch
 . 7-Zip                         v9.20         (multi-language)
 . Adobe Flash Player            v15.0.0.223   (language ignored)
 . Adobe Reader                  v11.0.09      (English-only; replace with your language version if necessary)
 . Java Runtime Environment      8u25          (language ignored)
 . Notepad++                     v6.6.9        (multi-language)
 . Windows updates               <pulled down live>
 
STAGE 5: Optimize
 . smartctl                      v6.2 2013-07-26 r3841
 . Defraggler                    v2.18.0.945
 
STAGE 6: Manual tools
 . ADSSpy                        v1.11.0.0
 * AdwCleaner                    v4.1.0.1
 . aswMBR                        v1.0.1.2041
 . autoruns                      v12.01
 * ComboFix                      v14.11.17.1
 . gmer                          v2.1.19357
 * Junkware Removal Tool         v6.3.9
 . ServicesRepair.exe            v1.0.0.3
 . TempFileCleaner               v3.1.9.0
 . VirusTotal uploader tool      v2.2
  

########################
# v4.0.2 // 2014-11-17 #
########################
tron.bat                         v4.0.2
 * tron.bat: Swap order of Stage 2 disinfect and Stage 3 de-bloat. By running debloat first we reduce the raw number of files that need to be scanned, which should reduce total run time. Thanks to /u/dl1828 for suggestion

STAGE 0: Prep
 . Rkill                         v2.6.8.0
 . ProcessKiller                 v1.0
 . TDSS Killer                   v3.0.0.41
 . erunt                         v1.1j
 . nircmd                        v2.75
  
STAGE 1: Tempclean
 . CCLeaner                      v4.19.4867
 . BleachBit                     v1.4
 . TempFileCleanup               v3.5.0

STAGE 2: De-bloat
Try to remove programs listed here: \resources\stage_2_de-bloat\programs_to_target.txt
 . No changes
	
STAGE 3: Disinfect
 . RogueKiller                   v10.0.2.0
 * Sophos Virus Removal Tool     v2.5.3, update defs
 * Vipre Rescue Scanner          v7.0.7.8, update defs
 . Malwarebytes Anti-Malware     v2.0.3.1025

STAGE 4: Patch
 . 7-Zip                         v9.20         (multi-language)
 * Adobe Flash Player            v15.0.0.223   (language ignored)
 . Adobe Reader                  v11.0.09      (English-only; replace with your language version if necessary)
 . Java Runtime Environment      8u25          (language ignored)
 . Notepad++                     v6.6.9        (multi-language)
 . Windows updates               <pulled down live>
 
STAGE 5: Optimize
 . smartctl                      v6.2 2013-07-26 r3841
 . Defraggler                    v2.18.0.945
 
STAGE 6: Manual tools
 . ADSSpy                        v1.11.0.0
 . AdwCleaner                    v4.0.0.2
 . aswMBR                        v1.0.1.2041
 . autoruns                      v12.01
 * ComboFix                      v14.11.15.1
 . gmer                          v2.1.19357
 . Junkware Removal Tool         v6.1.4
 . ServicesRepair.exe            v1.0.0.3      (ESET utility for fixing broken Windows services)
 . TempFileCleaner               v3.1.9.0
 . VirusTotal uploader tool      v2.2


########################
# v4.0.1 // 2014-11-07 #
########################
tron.bat                         v4.0.1
 ! stage_0_prep:bugfix:      Fix bug with speak feature where we weren't starting the Windows audio service in Safe Mode. Now force it to start. Thanks to EnrichedFetus
  
  
########################
# v4.0.0 // 2014-11-06 #
########################
tron.bat                         v4.0.0
 + tron.bat:annoyance:       Add disclaimer warning screen (sorry :-/). Accept with -e flag, or change associated EULA_ACCEPTED variable to yes to permanently accept
 + stage_0_prep:feature:     Add ProcessKiller utility. Nukes various userspace processes before starting. Thanks to /u/cuddlychops06
 + stage_0_prep:feature:     Add speak ability. Tron now audibly announces when it starts and finishes. Mute with the -q flag
                             or the SHUT_UP variable. Depending on interest, may add ability to announce each stage as it begins and completes
 + stage_0_prep:utility:     Add nircmd.exe to support speak ability, among other things
 ! stage_0_prep:bugfix:      Fix VSS cleanup that incorrectly executed on Vista (Vista vssadmin.exe does not support VSS cleanup). VSS cleanup now skipped if OS is Vista
 ! stage_0_prep:bugfix:      Fix logic error where we skipped calculating free hard drive space if the system drive was an SSD. Now detect free space regardless of disk type
 ! stage_2_disinfect:bugfix: Fix incorrect attempt to launch DISM image cleanup on Vista (Vista does not support DISM image cleanup. Sigh)
 ! stage_3_de-bloat:bugfix:  Fix crash error on Windows Vista Ultimate in Metro de-bloat section. Was crashing on string comparison due to "(TM)" symbols in Vista Ultimate name. Sigh
 ! stage_4_patch:bugfix:     Fix incorrect attempt to run DISM base reset on Vista (Vista does not support DISM base reset. Sigh)
 - stage_4_patch:cleanup:    Remove all version-specific subfolders for Java, Flash, Reader, and Notepad++, and rename all .bat installers to be version-neutral
                             Should reduce number of places we need to update when a new version is released
 ! misc:bugfix:              Fix broken shutdown command at end of script. Will now correctly auto-shutdown if requested
 * misc:cleanup:             Replace many redundant IF comparison statements with single bracketed statements. Should grant small speed increase and complexity reduction
 * misc:cleanup:             Don't create LOGPATH and LOGFILE until Tron has actually started. We were incorrectly creating even if a user only requested help (-h)
 * misc:cleanup:             Restructure all screens to provide more space for text while remaining under the default command-prompt 80 character width
 - misc:cleanup:             Remove unused labels from IF block cleanup (detect_ssd, detect_os, skip_adobe_flash, skip_rkill, skip_adobe_reader, skip_dism_base_reset)

STAGE 0: Prep
 . Rkill                         v2.6.8.0
 + ProcessKiller                 v1.0          (provided by /u/cuddlychops06)
 * TDSS Killer                   v3.0.0.41
 . erunt                         v1.1j
 + nircmd                        v2.75
  
STAGE 1: Tempclean
 * CCLeaner                      v4.19.4867
 . BleachBit                     v1.4
 * TempFileClean                 v3.5.0
    + Add removal of C:\Windows.old folder if it exists (left over from in-place Windows version upgrades). Thanks to /u/bodkov

STAGE 2: Disinfect
 . RogueKiller                   v10.0.2.0
 * Sophos Virus Removal Tool     v2.5.3, update defs
 * Vipre Rescue Scanner          v7.0.7.8, update defs
 . Malwarebytes Anti-Malware     v2.0.3.1025
 
STAGE 3: De-bloat
Try to remove programs listed here: \resources\stage_3_de-bloat\programs_to_target.txt
 . No changes

STAGE 4: Patch
 . 7-Zip                         v9.20         (multi-language)
 . Adobe Flash Player            v15.0.0.189   (language ignored)
 . Adobe Reader                  v11.0.09      (English-only; replace with your language version if necessary)
 . Java Runtime Environment      8u25          (language ignored)
 . Notepad++                     v6.6.9        (multi-language)
 . Windows updates               <pulled down live>
 
STAGE 5: Optimize
 . smartctl                      v6.2 2013-07-26 r3841
 . Defraggler                    v2.18.0.945
 
STAGE 6: Manual tools
 . ADSSpy                        v1.11.0.0
 . AdwCleaner                    v4.0.0.2
 . aswMBR                        v1.0.1.2041
 . autoruns                      v12.01
 . ComboFix                      v14.10.29.1
 . gmer                          v2.1.19357
 . Junkware Removal Tool         v6.1.4
 . ServicesRepair.exe            v1.0.0.3      (ESET utility for fixing broken Windows services)
 . TempFileCleaner               v3.1.9.0
 . VirusTotal uploader tool      v2.2
 

########################
# v3.9.0 // 2014-11-03 #
########################
tron.bat                         v3.9.0
 ! tron.bat:bugfix:  Fix calculation of free space before and after. Was missing code block for post-run space calculation. Thanks to /u/swtester
 ! tron.bat:bugfix:  Fix a registry modification that mistakenly executed even if the script was in dry run mode (-d)
 + tron.bat:feature: Add -m flag and associated PRESERVE_METRO_APPS variable to Preserve OEM Metro apps (don't remove them). Thanks to /u/swtester
 / tron.bat:misc:    Rename all instances of DO_SHUTDOWN to AUTO_SHUTDOWN

 STAGE 0: Prep
 . Rkill                         v2.6.8.0
 . TDSS Killer                   v3.0.0.40
 . erunt                         v1.1j
  
STAGE 1: Tempclean
 * CCLeaner                      v4.19.4867
 . BleachBit                     v1.4
 * TempFileClean                 v3.5.0
    + Add removal of C:\Windows.old folder if it exists (left over from in-place Windows version upgrades). Thanks to /u/bodkov

STAGE 2: Disinfect
 . RogueKiller                   v10.0.2.0
 * Sophos Virus Removal Tool     v2.5.3, update defs
 * Vipre Rescue Scanner          v7.0.7.8, update defs
 . Malwarebytes Anti-Malware     v2.0.3.1025
 
STAGE 3: De-bloat
Try to remove programs listed here: \resources\stage_3_de-bloat\programs_to_target.txt
 . No changes

STAGE 4: Patch
 . 7-Zip                         v9.20         (multi-language)
 . Adobe Flash Player            v15.0.0.189   (language ignored)
 . Adobe Reader                  v11.0.09      (English-only; replace with your language version if necessary)
 . Java Runtime Environment      8u25          (language ignored)
 . Notepad++                     v6.6.9        (multi-language)
 . Windows updates               <pulled down live>
 
STAGE 5: Optimize
 . smartctl                      v6.2 2013-07-26 r3841
 . Defraggler                    v2.18.0.945
 
STAGE 6: Manual tools
 . ADSSpy                        v1.11.0.0
 * AdwCleaner                    v4.0.0.2
 . aswMBR                        v1.0.1.2041
 . autoruns                      v12.01
 . ComboFix                      v14.10.29.1
 . gmer                          v2.1.19357
 . Junkware Removal Tool         v6.1.4
 . ServicesRepair.exe            v1.0.0.3      (ESET utility for fixing broken Windows services)
 . TempFileCleaner               v3.1.9.0
 . VirusTotal uploader tool      v2.2
 

########################
# v3.8.0 // 2014-10-29 #
########################
 ! At request of a couple people, I've converted the static Tron packs from .7z archives into self-extracting .EXE archives. This is to make it easier to unpack Tron on computers that don't yet have 7-Zip installed.

tron.bat                         v3.8.0
 / tron:META:            Change Tron static packs from .7z archives to self-extracting .exe archives. Thanks to /u/cmorche
 + tron.bat:feature:     Add self-destruct flag (-x). If selected Tron will derez itself after running while leaving logs intact. Thanks to /u/bodkov
 * tron.bat:logging:     Add display of disk free space before and after to log header and trailer, and associated variables. Thanks to /u/cuddlychops06
 * tron.bat:logging:     Minor logging tweak. Stamp any command-line flags that were used to header and trailer when running
 * tron.bat:improvement: Make all IF comparisons case-insensitive. Thanks to /u/Astrimedes
 - tron.bat:diskcheck:   Remove SMART disk health check and associated variables. Too many incorrect detections causing more of a hassle than it's worth.
 ! stage_1_tempclean:    Fix Windows Update cache cleanup; Windows Update service wouldn't start in Safe Mode, now force it to start. Thanks to /u/GrizzlyWinter

STAGE 0: Prep
 . Rkill                         v2.6.8.0
 . TDSS Killer                   v3.0.0.40
 . erunt                         v1.1j
  
STAGE 1: Tempclean
 . CCLeaner                      v4.18.4844
 . BleachBit                     v1.4
 . TempFileCleanup               v3.4.4

STAGE 2: Disinfect
 . RogueKiller                   v10.0.2.0
 * Sophos Virus Removal Tool     v2.5.3, update defs
 * Vipre Rescue Scanner          v7.0.7.8, update defs
 . Malwarebytes Anti-Malware     v2.0.3.1025
 
STAGE 3: De-bloat, programs specified in: \resources\stage_3_de-bloat\programs_to_target.txt
 . No changes

STAGE 4: Patch
 . 7-Zip                         v9.20         (multi-language)
 . Adobe Flash Player            v15.0.0.189   (language ignored)
 . Adobe Reader                  v11.0.09      (English-only; replace with your language version if necessary)
 . Java Runtime Environment      8u25          (language ignored)
 . Notepad++                     v6.6.9        (multi-language)
 . Windows updates               <pulled down live>
 
STAGE 5: Optimize
 . smartctl                      v6.2 2013-07-26 r3841
 . Defraggler                    v2.18.0.945
 
STAGE 6: Manual tools
 . ADSSpy                        v1.11.0.0
 * AdwCleaner                    v4.0.0.2
 . aswMBR                        v1.0.1.2041
 . autoruns                      v12.01
 * ComboFix                      v14.10.29.1
 . gmer                          v2.1.19357
 . Junkware Removal Tool         v6.1.4
 . ServicesRepair.exe            v1.0.0.3      (ESET utility for fixing broken Windows services)
 . TempFileCleaner               v3.1.9.0
 . VirusTotal uploader tool      v2.2


########################
# v3.7.2 // 2014-10-22 #
########################  
tron.bat                         v3.7.2
 ! tron.bat:diskhealthcheck:      Make Disk Health Check warning dialogue case-insensitive. Thanks to /u/Astrimedes


########################
# v3.7.1 // 2014-10-22 #
########################
tron.bat                         v3.7.1
 ! tron.bat:prep:                 Remove two pause statements mistakenly left over from testing

 
########################
# v3.7.0 // 2014-10-22 #
########################
tron.bat                         v3.7.0
 ! tron.bat:prep:                 Fix faulty disk health check (was exiting regardless what user chose). Thanks to /u/Tyrannosaurus_flex
 ! tron.bat:date and time:        Reset CUR_DATE after finishing virus scans, since they take so long and we sometimes cross into a new day (therefor leaving CUR_DATE incorrect). Thanks to /u/ScubaSteve
 * tron.bat:prep:                 Minor update to log header and trailer: Stamp what mode we're in (safe, safe with network, etc) and the location of the log file
 + tron.bat:prep:                 Enable "legacy" boot menu on Windows 8 and up (re-enable F8 functionality)
 + tron.bat:Feature:              Add shutdown flag (-o) and corresponding DO_SHUTDOWN variable to poweroff system when Tron finishes. Overrides auto-reboot (-r) if set. Thanks to /u/Stealth5325 and /u/Fogest
 + tron.bat:Feature:              Add verbose flag (-v) and corresponding VERBOSE variable. Displays, when possible, verbose/debug output from each program Tron calls (Sophos, Vipre, etc). NOTE: Tron will take much longer with this option enabled
 + stage_2_disinfect:roguekiller: Add RogueKiller (CMD version). Thanks to /u/bodkov
 * stage_2_disinfect:mbam:        Update MBAM link to reflect new installer
 / stage_2_disinfect:DISM:        Add /NoRestart flag to dism scan. It wasn't forcing a reboot, but added just in case it got any funny ideas.
 * stage_4_patch:jre:             Update JRE links to reflect new installers
 * stage_4_patch:jre:             Update Adobe links to reflect new installers

STAGE 0: Prep
 . Rkill                         v2.6.8.0
 . TDSS Killer                   v3.0.0.40
 . erunt                         v1.1j
  
STAGE 1: Tempclean
 . CCLeaner                      v4.18.4844
 . BleachBit                     v1.4
 . TempFileCleanup               v3.4.4

STAGE 2: Disinfect
 + RogueKiller                   v10.0.2.0
 * Sophos Virus Removal Tool     v2.5.3, update defs
 * Vipre Rescue Scanner          v7.0.7.8, update defs
 * Malwarebytes Anti-Malware     v2.0.3.1025
 
STAGE 3: De-bloat, programs specified in: \resources\stage_3_de-bloat\programs_to_target.txt
 * A few redundant entries removed

STAGE 4: Patch
 . 7-Zip                         v9.20         (multi-language)
 * Adobe Flash Player            v15.0.0.189   (language ignored)
 . Adobe Reader                  v11.0.09      (English-only; replace with your language version if necessary)
 . Java Runtime Environment      8u25          (language ignored)
 . Notepad++                     v6.6.9        (multi-language)
 . Windows updates               <pulled down live>
 
STAGE 5: Optimize
 . smartctl                      v6.2 2013-07-26 r3841
 . Defraggler                    v2.18.0.945
 
STAGE 6: Manual tools
 . ADSSpy                        v1.11.0.0
 * AdwCleaner                    v4.0.0.1
 . aswMBR                        v1.0.1.2041
 . autoruns                      v12.01
 * ComboFix                      v14.10.21.1
 . gmer                          v2.1.19357
 . Junkware Removal Tool         v6.1.4
 . ServicesRepair.exe            v1.0.0.3      (ESET utility for fixing broken Windows services)
 . TempFileCleaner               v3.1.9.0
 . VirusTotal uploader tool      v2.2



########################
# v3.6.0 // 2014-10-11 #
########################
tron.bat                         v3.6.0
 + tron.bat:prep:           Add drive health check via SMART. If SMART check fails, warn user before continuing. Thanks to /u/cuddlychops06
 + stage_0_prep:vss_clean:  Add cleanup of oldest Shadow Copy set. May convert this to full Shadow Copy set removal in the future. Thanks to /u/cuddlychops06
 / stage_1_tempclean:       Add 10-second delay after CCleaner and Bleachbit to give them time to finish before moving to next task.
 ! stage_3_de-bloat:Metro:  Fix Metro bloat removal; was failing due to service not starting in Safe Mode. Now force service to start regardless of Safe Mode.
 ! stage_3_de-bloat:Metro:  Fix Metro targeting; was incorrectly flagging Server 2008 as a Metro-enabled OS
 * stage_3_de-bloat:Metro:  Improve Metro bloat removal; use DISM image cleanup to remove now-unused Metro app packages from the Image Store. Thanks to /u/nomaddave
 + stage_4_patch:DISMreset: Add re-compilation of Windows binary store via Dism with /ResetBase after running Windows Update. Can significantly reduce size of SxS store. Thanks to /u/nomaddave

STAGE 0: Prep
 . Rkill                         v2.6.8.0
 . TDSS Killer                   v3.0.0.40
 . erunt                         v1.1j
  
STAGE 1: Tempclean
 * CCLeaner                      v4.18.4844
 . BleachBit                     v1.4
 . TempFileCleanup               v3.4.4

STAGE 2: Disinfect
 * Sophos Virus Removal Tool     v2.5.3, update defs
 * Vipre Rescue Scanner          v7.0.7.8, update defs
 . Malwarebytes Anti-Malware     v2.0.2.1012.exe
 
STAGE 3: De-bloat, programs specified in: \resources\stage_3_de-bloat\programs_to_target.txt
 . No changes

STAGE 4: Patch
 . 7-Zip                         v9.20         (multi-language)
 . Adobe Flash Player            v15.0.0.152   (language ignored)
 . Adobe Reader                  v11.0.09      (English-only; replace with your language version if necessary)
 . Java Runtime Environment      8u20          (language ignored)
 . Notepad++                     v6.6.9        (multi-language)
 . Windows updates               <pulled down live>
 
STAGE 5: Optimize
 . smartctl                      v6.2 2013-07-26 r3841
 . Defraggler                    v2.18.0.945
 
STAGE 6: Manual tools
 . ADSSpy                        v1.11.0.0
 . AdwCleaner                    v3.3.1.1
 . aswMBR                        v1.0.1.2041
 . autoruns                      v12.01
 * ComboFix                      v14.10.4.1
 . gmer                          v2.1.19357
 . Junkware Removal Tool         v6.1.4
 + ServicesRepair.exe            v1.0.0.3      (ESET utility for fixing broken Windows services)
 . TempFileCleaner               v3.1.9.0
 . VirusTotal uploader tool      v2.2



########################
# v3.5.0 // 2014-10-02 #
########################
tron.bat                         v3.5.0
 * stage_0_prep:enableMSI:  Manually enable MSI Installer service via command-line instead of bundled utility. Thanks to /u/cuddlychops06
 / stage_0_prep:tdsskiller: Disable use of QUARANTINE_PATH in TDSSKiller job due to causing BSODs on Vista. Left QUARANTINE_PATH variable and logic in place for possible future use
 / stage_0_prep:rkill:      Rename rkill.exe and rkill64.exe to rkill.com and rkill64.com to help avoid some anti-AV programs. Thanks to /u/cuddlychops06
 * stage_0_prep:WMIrepair:  Add repair of 64-bit executables to WMI repair section. Thanks to /u/cuddlychops06
 + stage_0_prep:RegBackup:  Add job to backup registry using erunt (after rkill); backs up to %LOGPATH%. Thanks to /u/cuddlychops06
 + stage_1_tempclean:       Add job to clean Internet Explorer. Thanks to /u/cuddlychops06
 + stage_1_tempclean:       Add cleanup of Windows Update cache. Thanks to /u/fumosus
 * stage_2_disinfect:sfc:   Add DISM image corruption check and repair (Windows 8/2012-family only). Thanks to /u/cuddlychops06
 ! stage_4_patch:Java:      Expand WMI uninstaller mask to catch MSI code for JRE7u67. Thanks to /u/placebonocebo
 - stage_4_patch:enableMSI: Remove now-unused MSI Installer utility

STAGE 0: Prep
 . Rkill                         v2.6.8.0
 . TDSS Killer                   v3.0.0.40
 + erunt                         v1.1j         (added for registry backup job)
  
STAGE 1: Tempclean
 . CCLeaner                      v4.17.4808
 . BleachBit                     v1.4
 . TempFileCleanup               v3.4.4

STAGE 2: Disinfect
 * Sophos Virus Removal Tool     v2.5.3, update defs
 * Vipre Rescue Scanner          v7.0.7.8, update defs
 . Malwarebytes Anti-Malware     v2.0.2.1012.exe
 
STAGE 3: De-bloat, programs specified in: \resources\stage_3_de-bloat\programs_to_target.txt
 . No changes

STAGE 4: Patch
 . 7-Zip                         v9.20         (multi-language)
 . Adobe Flash Player            v15.0.0.152   (language ignored)
 . Adobe Reader                  v11.0.09      (English-only; replace with your language version if necessary)
 . Java Runtime Environment      8u20          (language ignored)
 . Notepad++                     v6.6.9        (multi-language)
 . Windows updates               <pulled down live>
 
STAGE 5: Optimize
 . smartctl                      v6.2 2013-07-26 r3841
 . Defraggler                    v2.18.0.945
 
STAGE 6: Manual tools
 . ADSSpy                        v1.11.0.0
 * AdwCleaner                    v3.3.1.1
 . aswMBR                        v1.0.1.2041
 . autoruns                      v12.01
 * ComboFix                      v14.10.2.1
 . gmer                          v2.1.19357
 . Junkware Removal Tool         v6.1.4
 . TempFileCleaner               v3.1.9.0
 . VirusTotal uploader tool      v2.2



########################
# v3.4.0 // 2014-09-25 #
########################
tron.bat                         v3.4.0
 + tron.bat:variables:      Add QUARANTINE_PATH variable to support new Stage 0 TDSSKiller job. Use to specify where quarantine files get saved.
 / tron.bat:variables:      Rename REPO_SYNC_KEY to REPO_BTSYNC_KEY
 + stage_0_prep:tdsskiller: Add TDSSKiller to Stage 0: Prep steps. Thanks to /u/cuddlychops06
 / stage_0_prep:rkill:      Change rkill.log temporary storage location to %TEMP% instead of %LOGPATH%
 - stage_6_manual_tools:    Remove TDSSKiller (move to Stage 0)

STAGE 0: Prep
 . Rkill                         v2.6.8.0
 + TDSS Killer                   v3.0.0.40
	` Add to Tron; remove from manual tools. Thanks to /u/cuddlychops06
	` Quarantines %LOGPATH%\tron_quarantined_files by default
  
STAGE 1: Tempclean
 . CCLeaner                      v4.17.4808
 . BleachBit                     v1.4
 . TempFileCleanup               v3.4.4

STAGE 2: Disinfect
 * Sophos Virus Removal Tool     v2.5.3, update defs and engine
 * Vipre Rescue Scanner          v7.0.7.8, update defs
 . Malwarebytes Anti-Malware     v2.0.2.1012.exe
 
STAGE 3: De-bloat, programs specified in: \resources\stage_3_de-bloat\programs_to_target.txt
 . No changes

STAGE 4: Patch
 . 7-Zip                         v9.20         (multi-language)
 . Adobe Flash Player            v15.0.0.152   (language ignored)
 . Adobe Reader                  v11.0.09      (English-only; replace with your language version if necessary)
 . Java Runtime Environment      8u20          (language ignored)
 . Notepad++                     v6.6.9        (multi-language)
 . Windows updates               <pulled down live>
 
STAGE 5: Optimize
 . smartctl                      v6.2 2013-07-26 r3841
 . Defraggler                    v2.18.0.945
 
STAGE 6: Manual tools
 . ADSSpy                        v1.11.0.0
 . AdwCleaner                    v3.3.1.0
 . aswMBR                        v1.0.1.2041
 . autoruns                      v12.01
 * ComboFix                      v14.9.24.1
 . gmer                          v2.1.19357
 . Junkware Removal Tool         v6.1.4
 . TempFileCleaner               v3.1.9.0
 . VirusTotal uploader tool      v2.2



########################
# v3.3.2 // 2014-09-24 #
########################
tron.bat                         v3.3.2
 / stage_4_patch: Updated links to reflect new version of Adobe Reader

STAGE 0: Prep
 . Rkill                         v2.6.8.0
 
STAGE 1: Tempclean
 . CCLeaner                      v4.17.4808
 . BleachBit                     v1.4
 . TempFileCleanup               v3.4.4

STAGE 2: Disinfect
 * Sophos Virus Removal Tool     v2.5.3, update defs and engine
 * Vipre Rescue Scanner          v7.0.7.8, update defs
 . Malwarebytes Anti-Malware     v2.0.2.1012.exe
 
STAGE 3: De-bloat, programs specified in: \resources\stage_3_de-bloat\programs_to_target.txt
 . No changes

STAGE 4: Patch
 . 7-Zip                         v9.20         (multi-language)
 . Adobe Flash Player            v15.0.0.152   (language ignored)
 * Adobe Reader                  v11.0.09      (English-only; replace with your language version if necessary)
 . Java Runtime Environment      8u20          (language ignored)
 . Notepad++                     v6.6.9        (multi-language)
 . Windows updates               <pulled down live>
 
STAGE 5: Optimize
 . smartctl                      v6.2 2013-07-26 r3841
 . Defraggler                    v2.18.0.945
 
STAGE 6: Manual tools
 . ADSSpy                        v1.11.0.0
 . AdwCleaner                    v3.3.1.0
 . aswMBR                        v1.0.1.2041
 . autoruns                      v12.01
 * ComboFix                      v14.9.22.1
 . gmer                          v2.1.19357
 . Junkware Removal Tool         v6.1.4
 . TDSSKiller                    v3.0.0.40
 . TempFileCleaner               v3.1.9.0
 . VirusTotal uploader tool      v2.2
  
  
  
########################
# v3.3.1 // 2014-09-17 #
########################
tron.bat                         v3.3.1
 / tron.bat:prep and checks:  When checking for updates, store md5sums.txt in %TEMP% instead of \check_update directory

STAGE 0: Prep
 . Rkill                         v2.6.8.0
 
STAGE 1: Tempclean
 . CCLeaner                      v4.17.4808
 . BleachBit                     v1.4
 * TempFileClean                 v3.4.4

STAGE 2: Disinfect
 * Sophos Virus Removal Tool     v2.5.3, update defs and engine
 * Vipre Rescue Scanner          v7.0.7.8, update defs
 . Malwarebytes Anti-Malware     v2.0.2.1012.exe
 
STAGE 3: De-bloat, programs specified in: \resources\stage_3_de-bloat\programs_to_target.txt
 . No changes

STAGE 4: Patch
 . 7-Zip                         v9.20         (multi-language)
 . Adobe Flash Player            v15.0.0.152   (language ignored)
 . Adobe Reader                  v11.0.08      (English-only; replace with your language version if necessary)
 . Java Runtime Environment      8u20          (language ignored)
 . Notepad++                     v6.6.9        (multi-language)
 . Windows updates               <pulled down live>
 
STAGE 5: Optimize
 . smartctl                      v6.2 2013-07-26 r3841
 . Defraggler                    v2.18.0.945
 
STAGE 6: Manual tools
 . ADSSpy                        v1.11.0.0
 * AdwCleaner                    v3.3.1.0
 . aswMBR                        v1.0.1.2041
 . autoruns                      v12.01
 * ComboFix                      v14.9.16.1
 . gmer                          v2.1.19357
 . Junkware Removal Tool         v6.1.4
 . TDSSKiller                    v3.0.0.40
 . TempFileCleaner               v3.1.9.0
 . VirusTotal uploader tool      v2.2

  

########################
# v3.3.0 // 2014-09-11 #
########################
tron.bat                         v3.3.0
 + stage_1_tempclean:         Add job TempFileCleanup. Runs external TempFileCleanup script
 ! stage_0_prep:check_update: Remove trailing "/" character on Repo URL so we don't fetch <url>//md5sums.txt
 * stage_2_disinfect:         Add deletion of Malwarebytes desktop shortcut on Windows XP/Server 2003
 / stage_2_disinfect:         Enable -debug flag on Sophos Virus Removal Tool for more verbose output
 * stage_4_patch:             Update links to reflect new Adobe Flash installers

STAGE 0: Prep
 . Rkill                         v2.6.8.0
 
STAGE 1: Tempclean
 . CCLeaner                      v4.17.4808
 * BleachBit                     v1.4
 + TempFileClean                 v3.4.2

STAGE 2: Disinfect
 * Sophos Virus Removal Tool     v2.5.3, update defs and engine
    / Disable using the Windows service method to scan in config.xml. Was causing it to stall
	/ Enable scanning of archives in config.xml
 * Vipre Rescue Scanner          v7.0.7.8, update defs
 . Malwarebytes Anti-Malware     v2.0.2.1012.exe
 
STAGE 3: De-bloat, programs specified in: \resources\stage_3_de-bloat\programs_to_target.txt
 . No changes

STAGE 4: Patch
 . 7-Zip                         v9.20         (multi-language)
 * Adobe Flash Player            v15.0.0.152   (language ignored)
 . Adobe Reader                  v11.0.08      (English-only; replace with your language version if necessary)
 . Java Runtime Environment      8u20          (language ignored)
 * Notepad++                     v6.6.9        (multi-language)
 . Windows updates               <pulled down live>
 
STAGE 5: Optimize
 . smartctl                      v6.2 2013-07-26 r3841
 . Defraggler                    v2.18.0.945
 
STAGE 6: Manual tools
 . ADSSpy                        v1.11.0.0
 . AdwCleaner                    v3.3.0.9
 . aswMBR                        v1.0.1.2041
 . autoruns                      v12.01
 * ComboFix                      v14.9.11.1
 . gmer                          v2.1.19357
 . Junkware Removal Tool         v6.1.4
 . TDSSKiller                    v3.0.0.40
 . TempFileCleaner               v3.1.9.0
 . VirusTotal uploader tool      v2.2



########################
# v3.2.1 // 2014-09-05 #
########################
 * checksums.txt now uses SHA-256 for integrity verification instead of MD5. Thanks to /u/abcot

tron.bat                         v3.2.1
 ! stage_0_prep:check_update: Minor bug fix in update checker - don't set REPO_SCRIPT_VERSION and REPO_SCRIPT_DATE if we can't reach the update server. Thanks to /u/A999
 / stage_3_de-bloat:          Moved programs_to_target.txt and "note - read this.txt" to their own job subfolder ("oem") and updated tron.bat and instructions file to reflect changes



########################
# v3.2.0 // 2014-09-03 #
########################
tron.bat                         v3.2.0
 * tron.bat: Convert many references to internal Windows utilities to absolute paths to avoid relying on SYSTEM path to be correct. Thanks to /u/tastyratz
 * tron.bat: Replace all references to %WinDir% with %SystemRoot% since it is a 'core' variable and defined earlier in the OS lifetime (at OS installation) whereas %WINDIR% is a regular variable set to the value of %SystemRoot%
 * tron.bat: Update links to reflect new Adobe Flash installers
 ! tron.bat: Fix references to WMIC - we were mistakenly still relying on SYSTEM path and not using the absolute path set in the WMIC variable

STAGE 0: Prep
 . Rkill                         v2.6.8.0
 
STAGE 1: Tempclean
 * CCLeaner                      v4.17.4808
 . BleachBit                     v1.2

STAGE 2: Disinfect
 * Sophos Virus Removal Tool     v2.5, update defs
 * Vipre Rescue Scanner          v7.0.7.8, update defs
 . Malwarebytes Anti-Malware     v2.0.2.1012.exe
 
STAGE 3: De-bloat, programs specified in: \resources\stage_3_de-bloat\programs_to_target.txt
 - some redundant entries removed

STAGE 4: Patch
 . 7-Zip                         v9.20         (multi-language)
 * Adobe Flash Player            v14.0.0.179   (language ignored)
 . Adobe Reader                  v11.0.08      (English-only; replace with your language version if necessary)
 . Java Runtime Environment      8u20          (language ignored)
 . Notepad++                     v6.6.8        (multi-language)
 . Windows updates               <pulled down live>
 
STAGE 5: Optimize
 . smartctl                      v6.2 2013-07-26 r3841
 . Defraggler                    v2.18.0.945
 
STAGE 6: Manual tools
 . ADSSpy                        v1.11.0.0
 * AdwCleaner                    v3.3.0.9
 . aswMBR                        v1.0.1.2041
 . autoruns                      v12.01
 * ComboFix                      v14.8.31.1
 . gmer                          v2.1.19357
 . Junkware Removal Tool         v6.1.4
 . TDSSKiller                    v3.0.0.40
 . TempFileCleaner               v3.1.9.0
 . VirusTotal uploader tool      v2.2
 


########################
# v3.1.0 // 2014-08-28 #
########################
tron.bat                         v3.1.0
 * stage_0_prep:  Improve Event Log clearing routine; now save all Event Logs to %LOGPATH%\event_log_backups before clearing.
                  Thanks to /u/meandertothehorizon, /u/-pANIC- and /u/tethercat
                  I'm open to code block improvements on this section, the current method feels clumsy somehow.
 / stage_4_patch: Update Java installer links to reflect new paths				 

STAGE 0: Prep
 . Rkill                         v2.6.8.0
 
STAGE 1: Tempclean
 . CCLeaner                      v4.16.4763
 . BleachBit                     v1.2

STAGE 2: Disinfect
 * Sophos Virus Removal Tool     v2.5, update defs
 * Vipre Rescue Scanner          v7.0.7.8, update defs
 . Malwarebytes Anti-Malware     v2.0.2.1012.exe
 
STAGE 3: De-bloat, programs specified in: \resources\stage_3_de-bloat\programs_to_target.txt
 . no changes

STAGE 4: Patch
 . 7-Zip                         v9.20         (multi-language)
 . Adobe Flash Player            v14.0.0.176   (language ignored)
 . Adobe Reader                  v11.0.08      (English-only; replace with your language version if necessary)
 * Java Runtime Environment      8u20          (language ignored)
 . Notepad++                     v6.6.8        (multi-language)
 . Windows updates               <pulled down live>
 
STAGE 5: Optimize
 . smartctl                      v6.2 2013-07-26 r3841
 . Defraggler                    v2.18.0.945
 
STAGE 6: Manual tools
 . ADSSpy                        v1.11.0.0
 . AdwCleaner                    v3.3.0.8
 . aswMBR                        v1.0.1.2041
 . autoruns                      v12.01
 * ComboFix                      v14.8.28.1
 . gmer                          v2.1.19357
 . Junkware Removal Tool         v6.1.4
 . TDSSKiller                    v3.0.0.40
 . TempFileCleaner               v3.1.9.0
 . VirusTotal uploader tool      v2.2


 
########################
# v3.0.1 // 2014-08-23 #
########################

STAGE 0: Prep
 * check_update: Replaced wget binary with standalone version. Thanks to /u/Olonzac


 
########################
# v3.0.0 // 2014-08-23 #
########################
tron.bat                         v3.0.0
 + wrap-up:           Collect Vipre and MBAM logs (deposit them in LOGPATH directory). Thanks to /u/swtester
 + tron.bat:          Add rudimentary update check. Will notify you if a newer version is available on the official repo server
 - tron.bat:          Remove outdated reference to Emsisoft's a2cmd in welcome screen. Thanks to /u/swtester
 / tron.bat:          Rename SCRIPT_UPDATED to SCRIPT_DATE
 * prep and checks:   Beef up OS detection routine to support various improvements
 * stage_2_disinfect: Switch order of Vipre and Sophos to prevent Sophos deleting Vipre's quarantine, preventing recovery. Thanks to /u/swtester
 + stage_3_de-bloat:  Add removal of default Metro apps (Windows 8/8.1 only). Thanks to https://keybase.io/exabrial

STAGE 0: Prep
 . Rkill                         v2.6.8.0
 
STAGE 1: Tempclean
 . CCLeaner                      v4.16.4763
 . BleachBit                     v1.2

STAGE 2: Disinfect
 * Sophos Virus Removal Tool     v2.5, update defs
 * Vipre Rescue Scanner          v7.0.7.8, update defs
 . Malwarebytes Anti-Malware     v2.0.2.1012.exe
 
STAGE 3: De-bloat, programs specified in: \resources\stage_3_de-bloat\programs_to_target.txt

STAGE 4: Patch
 . 7-Zip                         v9.20         (multi-language)
 . Adobe Flash Player            v14.0.0.176   (language ignored)
 . Adobe Reader                  v11.0.08      (English-only; replace with your language version if necessary)
 . Java Runtime Environment      8u11          (language ignored)
 . Notepad++                     v6.6.8        (multi-language)
 . Windows updates               <pulled down live>
 
STAGE 5: Optimize
 . smartctl                      v6.2 2013-07-26 r3841
 . Defraggler                    v2.18.0.945
 
STAGE 6: Manual tools
 . ADSSpy                        v1.11.0.0
 . AdwCleaner                    v3.3.0.8
 . aswMBR                        v1.0.1.2041
 . autoruns                      v12.01
 * ComboFix                      v14.8.21.1
 . gmer                          v2.1.19357
 . Junkware Removal Tool         v6.1.4
 . TDSSKiller                    v3.0.0.40
 . TempFileCleaner               v3.1.9.0
 . VirusTotal uploader tool      v2.2
 
 
 
########################
# v2.2.1 // 2014-08-21 #
########################
tron.bat                         v2.2.1
 ! prep and checks:   Fix admin rights check; net session doesn't work in Safe Mode, but all command prompts launched in Safe Mode are admin-privileged by default, so we simply skip the Admin rights check if we're already in safe mode.
 * stage_3_disinfect: Integrate SFC's log into main tron.log. Thanks to /u/adminhugh
 - stage_3_disinfect: Remove Emsisoft's a2cmd scanner since it seems to crash and stall the script more often than it does anything else
 ! stage_4_patch:     Fix incorrect call to "jre-8u11-x86.bat" (should be "jre-8u11-i586.bat"). Thanks to /u/swtester

STAGE 0: Prep
 . Rkill                         v2.6.8.0
 
STAGE 1: Tempclean
 . CCLeaner                      v4.16.4763
 . BleachBit                     v1.2

STAGE 2: Disinfect
 * Sophos Virus Removal Tool     v2.5, update defs
 * Vipre Rescue Scanner          v7.0.7.8, update defs
 - Emsisoft Commandline Scanner  v9.0.0.4183 -- REMOVED
 . Malwarebytes Anti-Malware     v2.0.2.1012.exe
 
STAGE 3: De-bloat, programs specified in: \resources\stage_3_de-bloat\programs_to_target.txt
 + Added a couple new entries

STAGE 4: Patch
 . 7-Zip                         v9.20         (multi-language)
 . Adobe Flash Player            v14.0.0.176   (language ignored)
 . Adobe Reader                  v11.0.08      (English-only; replace with your language version if necessary)
 . Java Runtime Environment      8u11          (language ignored)
 . Notepad++                     v6.6.8        (multi-language)
 . Windows updates               <pulled down live>
 
STAGE 5: Optimize
 . smartctl                      v6.2 2013-07-26 r3841
 . Defraggler                    v2.18.0.945
 
STAGE 6: Manual tools
 . ADSSpy                        v1.11.0.0
 * AdwCleaner                    v3.3.0.8
 . aswMBR                        v1.0.1.2041
 . autoruns                      v12.01
 * ComboFix                      v14.8.19.1
 . gmer                          v2.1.19357
 . Junkware Removal Tool         v6.1.4
 . TDSSKiller                    v3.0.0.40
 . TempFileCleaner               v3.1.9.0
 . VirusTotal uploader tool      v2.2
 
 

########################
# v2.1.0 // 2014-08-13 #
########################
tron.bat                         v2.1.0
 ! prep and checks:  Fix admin check. Thanks to /u/agent-squirrel
 / prep and checks:  Admin check color change. Will now be more alarming and hopefully reduce number of people who try to run as non-Admin
 * stage_4_patch:    Updated links to reflect new Flash and Reader installers
 * tron.bat:         Misc snarky comments about MS products removed
 
STAGE 0: Prep
 * Rkill                         v2.6.8.0
 
STAGE 1: Tempclean
 . CCLeaner                      v4.16.4763
 . BleachBit                     v1.2

STAGE 2: Disinfect
 * Sophos Virus Removal Tool     v2.5, update defs
 * Vipre Rescue Scanner          v7.0.7.8, update defs
 * Emsisoft Commandline Scanner  v9.0.0.4183, update defs
 . Malwarebytes Anti-Malware     v2.0.2.1012.exe
 
STAGE 3: De-bloat, programs specified in: \resources\stage_3_de-bloat\programs_to_target.txt

STAGE 4: Patch
 . 7-Zip                         v9.20
 * Adobe Flash Player            v14.0.0.176
 * Adobe Reader                  v11.0.08
 . Java Runtime Environment      8u11
 . Notepad++                     v6.6.8
 . Windows updates               <pulled down live>
 
STAGE 5: Optimize
 . smartctl                      v6.2 2013-07-26 r3841
 . Defraggler                    v2.18.0.945
 
STAGE 6: Manual tools
 . ADSSpy                        v1.11.0.0
 . AdwCleaner                    v3.3.0.4
 . aswMBR                        v1.0.1.2041
 * autoruns                      v12.01
 . ComboFix                      v14.8.6.2
 . gmer                          v2.1.19357
 . Junkware Removal Tool         v6.1.4
 . TDSSKiller                    v3.0.0.40
 . TempFileCleaner               v3.1.9.0
 . VirusTotal uploader tool      v2.2

 

########################
# v2.0.0 // 2014-08-11 #
########################
tron.bat                         v2.0.0
 * prep and checks:  Rename VERSION and UPDATED to SCRIPT_VERSION and SCRIPT_UPDATED
 ! prep and checks:  Fix missing 'set WMIC=<path>' command (was causing all JRE removal commands to fail)
 * stage_0_prep:     Add flag (-p) to preserve the current Power Scheme (default is to reset power scheme to Windows default). Thanks to /u/GetOnMyAmazingHorse
 ! stage_4_patch:    Fix bugs with Java and Flash installers where we'd subsequently fail to get in the correct directory after calling the first script
 + stage_5_optimize: Add job to scan system drive for errors and schedule a chkdsk at next reboot if any are found. Thanks to /u/mikeyuf

STAGE 0: Prep
 * Rkill                         v2.6.8.0
 
STAGE 1: Tempclean
 . CCLeaner                      v4.16.4763
 . BleachBit                     v1.2

STAGE 2: Disinfect
 * Sophos Virus Removal Tool     v2.5, update defs
 * Vipre Rescue Scanner          v7.0.7.8, update defs
 * Emsisoft Commandline Scanner  v9.0.0.4183, update defs
 . Malwarebytes Anti-Malware     v2.0.2.1012.exe
 
STAGE 3: De-bloat ( Specified in: \resources\stage_3_de-bloat\programs_to_target.txt )

STAGE 4: Patch
 . 7-Zip                         v9.20
 . Adobe Flash Player            v14.0.0.145
 . Adobe Reader                  v11.0.07
 . Java Runtime Environment      8u11
 . Notepad++                     v6.6.8
 . Windows updates               <pulled down live>
 
STAGE 5: Optimize
 . smartctl                      v6.2 2013-07-26 r3841
 . Defraggler                    v2.18.945
 
STAGE 6: Manual tools
 . ADSSpy                        v1.11.0.0
 * AdwCleaner                    v3.3.0.4
 . aswMBR                        v1.0.1.2041
 . autoruns                      v12.0
 * ComboFix                      v14.8.6.2
 . gmer                          v2.1.19357
 . Junkware Removal Tool         v6.1.4
 . TDSSKiller                    v3.0.0.40
 . TempFileCleaner               v3.1.9.0
 . VirusTotal uploader tool      v2.2

 

########################
# v1.9.0 // 2014-08-04 #
########################
tron.bat                         v1.9.0
 + tron.bat: Added support for the following optional command-line flags (can be combined):
    -c  Config dump (display current variables)
    -d  Dry run. Run through Tron without executing any jobs (mostly for my testing)
    -s  Skip defrag. Force Tron to skip defrag regardless whether an SSD is detected
    -h  Spit out help on using Tron via command-line
    -r  Reboot (auto-reboot 30 seconds after completion)
 * tron.bat: Improved logic block handling command-line flags; we can now parse flags in any order. Thanks to /u/Undeadlord for suggestion
 - tron.bat: Removed support for --auto flag (use -a instead) 
 ! prep and checks: Fix Admin rights check for Windows 8/8.1 (again); Revert to hard-exit if non-Admin detected
 
STAGE 0: Prep
 . Rkill                         v2.6.7.0
 
STAGE 1: Tempclean
 * CCLeaner                      v4.16.4763
 . BleachBit                     v1.2

STAGE 2: Disinfect
 * Sophos Virus Removal Tool     v2.5, update defs
 * Vipre Rescue Scanner          v7.0.7.8, update defs
 * Emsisoft Commandline Scanner  v9.0.0.4183, update defs
 . Malwarebytes Anti-Malware     v2.0.2.1012.exe
 
STAGE 3: De-bloat ( Specified in: \resources\stage_3_de-bloat\programs_to_target.txt )

STAGE 4: Patch
 . 7-Zip                         v9.20
 . Adobe Flash Player            v14.0.0.145
 . Adobe Reader                  v11.0.07
 . Java Runtime Environment      8u11
 * Notepad++                     v6.6.8
 . Windows updates               <pulled down live>
 
STAGE 5: Optimize
 . smartctl                      v6.2 2013-07-26 r3841
 . Defraggler                    v2.18.945
 
STAGE 6: Manual tools
 . ADSSpy                        v1.11.0.0
 * AdwCleaner                    v3.3.0.2
 . aswMBR                        v1.0.1.2041
 . autoruns                      v12.0
 * ComboFix                      v14.8.2.2
 . gmer                          v2.1.19357
 . Junkware Removal Tool         v6.1.4
 . TDSSKiller                    v3.0.0.40
 . TempFileCleaner               v3.1.9.0
 . VirusTotal uploader tool      v2.2
 
 
 
########################
# v1.8.2 // 2014-07-31 #
########################
tron.bat                         v1.8.2
 * prep and checks:   Move Log File Handling section before --auto check (was incorrectly being skipped if --auto flag was used)
 + stage_0_prep:      Add code to reduce space allowed for System Restore checkpoints to 5%
 + stage_2_disinfect: Add /pup flag to Emsisoft command-line scanner (a2cmd) to catch "potentially unwanted programs"; thanks to /u/3xist
 ! stage_2_disinfect: Fix failure on 32-bit systems where Tron would fail to get in correct MBAM Program Files directory

STAGE 0: Prep
 . Rkill                         v2.6.7.0
 
STAGE 1: Tempclean
 . CCLeaner                      v4.15.4725
 . BleachBit                     v1.2

STAGE 2: Disinfect
 * Sophos Virus Removal Tool     v2.5, update defs
 * Vipre Rescue Scanner          v7.0.7.8, update defs
 * Emsisoft Commandline Scanner  v9.0.0.4183, update defs
 . Malwarebytes Anti-Malware     v2.0.2.1012.exe
 
STAGE 3: De-bloat
Specified in: \resources\stage_3_de-bloat\programs_to_target.txt
 * Greatly expanded list of programs to target (too long to list here). 
   Thanks to /u/3xist and /u/Gaxor

STAGE 4: Patch
 . 7-Zip                         v9.20
 . Adobe Flash Player            v14.0.0.145
 . Adobe Reader                  v11.0.07
 . Java Runtime Environment      8u11
 . Notepad++                     v6.6.7
 . Windows updates               <pulled down live>
 
STAGE 5: Optimize
 . smartctl                      v6.2 2013-07-26 r3841
 . Defraggler                    v2.18.945
 
STAGE 6: Manual tools
 . ADSSpy                        v1.11.0.0
 * AdwCleaner                    v3.3.0.1
 . aswMBR                        v1.0.1.2041
 . autoruns                      v12.0
 * ComboFix                      v14.7.29.1
 . gmer                          v2.1.19357
 . Junkware Removal Tool         v6.1.4
 . TDSSKiller                    v3.0.0.40
 . TempFileCleaner               v3.1.9.0
 . VirusTotal uploader tool      v2.2


 
########################
# v1.8.1 // 2014-07-29 #
########################
tron.bat                         v1.8.1
 ! tron.bat: Fix incorrect "pushd" entry (was wmi_repair; supposed to be repair_rmi); thanks to /u/3xist
 

 
########################
# v1.8.0 // 2014-07-25 #
########################
tron.bat                         v1.8.0
 * prep and checks:   Overhaul Date/Time conversion so we can handle all versions of Windows using any local date-time format
 ! prep and checks:   Possible fix for Windows 8/8.1 Admin rights check. Just in case, switched the Administrator rights check to warning-only (removed forced exit). Thanks to /u/domz128
 * stage_0_prep:      rkill improvements; now executes silently (no popup window) and logs to the standard log file along with everything else
 + stage_1_tempclean: Add job to clear Windows event logs

STAGE 0: Prep
 . Rkill                         v2.6.7.0
 
STAGE 1: Tempclean
 . CCLeaner                      v4.15.4725
 . BleachBit                     v1.2

STAGE 2: Disinfect
 * Sophos Virus Removal Tool     v2.5, update defs
 * Vipre Rescue Scanner          v7.0.7.8, update defs
 . Emsisoft Commandline Scanner  v9.0.0.4183
 . Malwarebytes Anti-Malware     v2.0.2.1012.exe
 
STAGE 3: De-bloat
Specified in: \resources\stage_3_de-bloat\programs_to_target.txt
 . 3vix%%
 . Acer%%
 . Adobe Shockwave%%
 . Advanced%%FX Engine
 . Akamai%%
 . Amazon Browser%%
 . Bing%%
 . Bonjour%%
 . BlueStack%%
 . Catalina Savings%%
 . Cyberlink%%
 . Dell Getting Started Guide%%
 . Dell Video%%
 . eBay%%
 . eMachines%%
 . Free Download Manager%%
 . HP Deskjet%%Help
 . Launch Manager%%
 . Lenovo%%
 . Live! Cam Avatar%%
 . Move Media%%
 . My HP%%
 . PowerDVD%%
 . RenWeb%%
 . Roxio%%
 . Sonic CinePlayer%%
 . %%Toolbar%%
 . Toshiba%%
 . %%Trial%%
 . UserGuide%%
 . WildTangent%%

 . Yahoo! Browser%%

STAGE 4: Patch
 . 7-Zip                         v9.20
 . Adobe Flash Player            v14.0.0.145
 . Adobe Reader                  v11.0.07
 * Java Runtime Environment      8u11
 . Notepad++                     v6.6.7
 . Windows updates               <pulled down live>
 
STAGE 5: Optimize
 . smartctl                      v6.2 2013-07-26 r3841
 . Defraggler                    v2.18.945
 
STAGE 6: Manual tools
 . ADSSpy                        v1.11.0.0
 . AdwCleaner                    v3.2.1.6
 . aswMBR                        v1.0.1.2041
 . autoruns                      v12.0
 * ComboFix                      v14.7.25.1
 . gmer                          v2.1.19357
 . Junkware Removal Tool         v6.1.4
 . TDSSKiller                    v3.0.0.40
 . TempFileCleaner               v3.1.9.0
 . VirusTotal uploader tool      v2.2


 
########################
# v1.7.4 // 2014-07-23 #
########################
tron.bat                         v1.7.4
 ! prep and checks: Fix incorrectly-placed popd statement at beginning of :detect_safe_mode block. Thanks to /u/Eschmacher
 

 
########################
# v1.7.3 // 2014-07-22 #
########################
tron.bat                         v1.7.3
 ! prep and checks: Fix SSD detection (possibly). Please test and report if it fails on your drive

 * prep and checks: Rename all instances of REBOOT_DELAY to AUTO_REBOOT_DELAY 

 

########################
# v1.7.2 // 2014-07-22 #
########################
tron.bat                         v1.7.2
 * tron.bat:        Add "--auto" and "-a" flags for automatic unattended execution
 / tron.bat:        Move all but most recent changelog entries to the changelog file, to avoid cluttering up script header
 + prep and checks: Re-add check for Administrator rights using a 100% reliable method for Windows 2000 through Windows 8. Thanks to stackoverflow.com/users/3198799/and31415 for fix
 * prep and checks: Revert SSD check to something more reliable

 
 
########################
# v1.7.1 // 2014-07-22 #
########################
tron.bat                         v1.7.1
 - prep and checks: Remove check for Administrator rights since it was failing too often.

 

########################
# v1.7.0 // 2014-07-21 #
########################
tron.bat                         v1.7
 + prep and checks:   Add check for Administrator rights. Thanks to /u/apcomputerworks
 + stage_2_disinfect: Add Emsisoft Commandline Scanner. "smart" scan + NTFS alternate data streams scan. Uses Direct Disk Access mode. Deletes detected malware immediately (/delete flag)
 / tron.bat:          Move user-configurable variables to the top of the script, above Check and Preps section	 

STAGE 0: Prep
 . Rkill                         v2.6.7.0
 
STAGE 1: Tempclean
 . CCLeaner                      v4.15.4725
 . BleachBit                     v1.2

STAGE 2: Disinfect
 * Sophos Virus Removal Tool     v2.5, update defs
 * Vipre Rescue Scanner          v7.0.7.8, update defs
 + Emsisoft Commandline Scanner  v9.0.0.4183
 . Malwarebytes Anti-Malware     v2.0.2.1012.exe
 
STAGE 3: De-bloat
Specified in: \resources\stage_3_de-bloat\programs_to_target.txt
 . 3vix%%
 . Acer%%
 . Adobe Shockwave%%
 . Advanced%%FX Engine
 . Akamai%%
 . Amazon Browser%%
 . Bing%%
 . Bonjour%%
 . BlueStack%%
 . Catalina Savings%%
 . Cyberlink%%
 . Dell Getting Started Guide%%
 . Dell Video%%
 . eBay%%
 . eMachines%%
 . Free Download Manager%%
 . HP Deskjet%%Help
 . Launch Manager%%
 . Lenovo%%
 . Live! Cam Avatar%%
 . Move Media%%
 . My HP%%
 . PowerDVD%%
 . RenWeb%%
 . Roxio%%
 . Sonic CinePlayer%%
 . %%Toolbar%%
 . Toshiba%%
 . %%Trial%%
 . UserGuide%%
 . WildTangent%%
 . Yahoo! Browser%%

STAGE 4: Patch
 . 7-Zip                         v9.20
 . Adobe Flash Player            v14.0.0.145
 . Adobe Reader                  v11.0.07
 . Java Runtime Environment      8u5

 . Notepad++                     v6.6.7
 . Windows updates               <pulled down live>
 
STAGE 5: Optimize
 . smartctl                      v6.2 2013-07-26 r3841
 . Defraggler                    v2.18.945
 
STAGE 6: Manual tools
 . ADSSpy                        v1.11.0.0
 * AdwCleaner                    v3.2.1.6
 . aswMBR                        v1.0.1.2041
 . autoruns                      v12.0
 * ComboFix                      v14.7.21.1
 . gmer                          v2.1.19357
 . Junkware Removal Tool         v6.1.4
 + TDSSKiller                    v3.0.0.40
 . TempFileCleaner               v3.1.9.0
 . VirusTotal uploader tool      v2.2

 
######################
# v1.6 // 2014-07-16 #
######################
tron.bat                         v1.6
 + stage_2_disinfect: Add System File Checker scan to repair broken Windows core files. Skipped on XP and Server 2003 since these require an original install disk to function. Thanks to /u/cyr4n0
 + stage_0_prep:      Add code to detect and repair broken WMI configurations
	
STAGE 0: Prep
 . Rkill                         v2.6.7.0
 
STAGE 1: Tempclean
 . CCLeaner                      v4.15.4725
 . BleachBit                     v1.2

STAGE 2: Disinfect
 . Malwarebytes Anti-Malware     v2.0.2.1012.exe
 * Sophos Virus Removal Tool     v2.5, update defs 2014-07-16
 * Vipre Rescue Scanner          v7.0.7.8, update defs 2014-07-16
 
STAGE 3: De-bloat
Specified in: \resources\stage_3_de-bloat\programs_to_target.txt
 + 3vix%%
 . Acer%%
 . Adobe Shockwave%%
 . Advanced%%FX Engine
 . Akamai%%
 . Amazon Browser%%
 . Bing%%
 . Bonjour%%
 + BlueStack%%
 . Catalina Savings%%
 . Cyberlink%%
 . Dell Getting Started Guide%%
 . Dell Video%%
 . eBay%%
 . eMachines%%
 . Free Download Manager%%
 . HP Deskjet%%Help
 . Launch Manager%%
 . Lenovo%%
 . Live! Cam Avatar%%
 . Move Media%%
 . My HP%%
 . PowerDVD%%
 . RenWeb%%
 . Roxio%%
 . Sonic CinePlayer%%
 . %%Toolbar%%
 + Toshiba%%
 + %%Trial%%
 . UserGuide%%
 . WildTangent%%
 . Yahoo! Browser%%

STAGE 4: Patch
 . 7-Zip                         v9.20
 . Adobe Flash Player            v14.0.0.145
 . Adobe Reader                  v11.0.07
 . Java Runtime Environment      8u5
 . Notepad++                     v6.6.7
 . Windows updates               <pulled down live>
 
STAGE 5: Optimize
 . smartctl                      v6.2 2013-07-26 r3841
 . Defraggler                    v2.18.945
 
STAGE 6: Manual tools
 . ADSSpy                        v1.11.0.0
 . AdwCleaner                    v3.2.1.5
 . aswMBR                        v1.0.1.2041
 . autoruns                      v12.0
 * ComboFix                      v14.7.16.2
 . gmer                          v2.1.19357
 . Junkware Removal Tool         v6.1.4
 . TempFileCleaner               v3.1.9.0
 . VirusTotal uploader tool      v2.2
 
 
 
######################
# v1.5 // 2014-07-15 #
######################
tron.bat                         v1.5
 + tron.bat:      Add "-auto" flag to support silent/scripted execution. Run the script and pass "-auto" as the first argument and Tron will run silently while still using all settings configured in the VARIABLES section
 * tron.bat:      Set power mode to "Always On/High Performance" at start of script, then reset power settings to Windows defaults when finished
 * tron.bat:      General cleanup of many conditional tests; should slightly speed script up
 * stage_4_patch: Remove all existing JRE versions prior to installing latest JRE
	 
STAGE 0: Prep
 . Rkill                         v2.6.7.0
 
STAGE 1: Tempclean
 . CCLeaner                      v4.15.4725
 . BleachBit                     v1.2

STAGE 2: Disinfect
 . Malwarebytes Anti-Malware     v2.0.2.1012.exe
 . Sophos Virus Removal Tool     v2.5, update defs 2014-07-15
 . Vipre Rescue Scanner          v7.0.7.8
 
STAGE 3: De-bloat target keywords (%% = any number of characters wildcard)
Specified in: \resources\stage_3_de-bloat\programs_to_target.txt
 . Acer%%
 . Adobe Shockwave%%
 . Advanced%%FX Engine
 . Akamai%%
 . Amazon Browser%%
 . Bing%%
 . Bonjour%%
 . Catalina Savings%%
 . Cyberlink%%
 . Dell Getting Started Guide%%
 . Dell Video%%
 . eBay%%
 . eMachines%%
 . Free Download Manager%%
 . HP Deskjet%%Help
 . Launch Manager%%
 . Lenovo%%
 . Live! Cam Avatar%%
 . Move Media%%
 . My HP%%
 . PowerDVD%%
 . RenWeb%%
 . Roxio%%
 . Sonic CinePlayer%%
 . %%Toolbar%%
 . UserGuide%%
 + WildTangent%%
 . Yahoo! Browser%%

STAGE 4: Patch
 . 7-Zip                         v9.20
 . Adobe Flash Player            v14.0.0.145
 . Adobe Reader                  v11.0.07
 . Java Runtime Environment      8u5
 . Notepad++                     v6.6.7
 . Windows updates               <pulled down live>
 
STAGE 5: Optimize
 . smartctl                      v6.2 2013-07-26 r3841
 . Defraggler                    v2.18.945
 
STAGE 6: Manual tools
 . ADSSpy                        v1.11.0.0
 * AdwCleaner                    v3.2.1.5
 . aswMBR                        v1.0.1.2041
 . autoruns                      v12.0
 * ComboFix                      v14.7.15.4
 . gmer                          v2.1.19357
 + Junkware Removal Tool         v6.1.4
 . TempFileCleaner               v3.1.9.0
 . VirusTotal uploader tool      v2.2
 
 
 
######################
# v1.4 // 2014-07-14 #
######################
tron.bat                         v1.4
 + tron.bat:          Add SKIP_DEFRAG variable to force defrag to always skip
 * tron.bat:          Improve SSD detection. Thanks to /u/bdm800 
 * tron.bat:          Clean up welcome screen and various comments 
 * tron.bat:          Reduce time spent waiting for rkill from 110 seconds to 90 seconds 
 * stage_2_disinfect: Switch Sophos and Vipre to log to console instead of log file. This way you can see which file they're on, and prevents people from thinking the scanner is stalled. 
 
STAGE 0: Prep
 . Rkill                         v2.6.7.0
 
STAGE 1: Tempclean
 . CCLeaner                      v4.15.4725
 * BleachBit                     v1.2
    * Updated to target more locations, including Firefox, Thunderbird, and Chrome temp files

STAGE 2: Disinfect
 . Malwarebytes Anti-malware     v2.0.2.1012.exe
 . Sophos Virus Removal Tool     v2.5, update defs 2014-07-14
 . Vipre Rescue Scanner          v7.0.7.8
 
STAGE 3: De-bloat target keywords (%% = any number of characters wildcard)
These are specified in: \resources\stage_3_de-bloat\programs_to_target.txt
 . Acer%%
 . Adobe Shockwave%%
 . Advanced%%FX Engine
 . Akamai%%
 . Amazon Browser%%
 . Bing%%
 . Bonjour%%
 . Catalina Savings%%
 . Cyberlink%%
 . Dell Getting Started Guide%%
 . Dell Video%%
 . eBay%%
 . eMachines%%
 . Free Download Manager%%
 . HP Deskjet%%Help
 . Launch Manager%%
 . Lenovo%%
 . Live! Cam Avatar%%
 . Move Media%%
 . My HP%%
 . PowerDVD%%
 . RenWeb%%
 . Roxio%%
 . Sonic CinePlayer%%
 . %%Toolbar%%
 . UserGuide%%
 . Yahoo! Browser%%

STAGE 4: Patch
 . 7-Zip                         v9.20
 . Adobe Flash Player            v14.0.0.145
 . Adobe Reader                  v11.0.07
 . Java Runtime Environment      8u5
 . Notepad++                     v6.6.7
 . Windows updates               <pulled down live>
 
STAGE 5: Optimize
 . smartctl                      v6.2 2013-07-26 r3841
 . Defraggler                    v2.18.945
 
STAGE 6: Manual tools
 . ADSSpy                        v1.11.0.0
 . AdwCleaner                    v3.2.1.4
 . aswMBR                        v1.0.1.2041
 . autoruns                      v12.0
 . ComboFix                      v14.7.3.1
 . gmer                          v2.1.19357
 + Junkware Removal Tool         v6.1.4
 . TempFileCleaner               v3.1.9.0
 . VirusTotal uploader tool      v2.2
 
 

######################
# v1.3 // 2014-07-10 #
######################
tron.bat                         v1.3
 + tron.bat:      Add additional checks for SSD drives on /dev/sdb and /dev/sdc
 * stage_4_patch: Update links for Adobe Flash and Notepad++ to reflect new versions
	 
STAGE 0: Prep
 . Rkill                         v2.6.7.0
 
STAGE 1: Tempclean
 . CCLeaner                      v4.15.4725
 - BleachBit                     v1.2

STAGE 2: Disinfect
 . Malwarebytes Anti-malware     v2.0.2.1012
 . Sophos Virus Removal Tool     v2.5, update defs 2014-07-10
 . Vipre Rescue Scanner          v7.0.7.8
 
STAGE 3: De-bloat target keywords (%% = any number of characters wildcard)
These are specified in: \resources\stage_3_de-bloat\programs_to_target.txt
 . Acer%%
 + Adobe Shockwave%%
 + Advanced%%FX Engine
 + Akamai%%
 + Amazon Browser%%
 . Bing%%
 + Bonjour%%
 + Catalina Savings%%
 . Cyberlink%%
 + Dell Getting Started Guide%%
 + Dell Video%%
 . eBay%%
 . eMachines%%
 . Free Download Manager%%
 + HP Deskjet%%Help
 . Launch Manager%%
 + Lenovo%%
 + Live! Cam Avatar%%
 + Move Media%%
 + My HP%%
 + PowerDVD%%
 + RenWeb%%
 + Roxio%%
 + Sonic CinePlayer%%
 + %%Toolbar%%
 + UserGuide%%
 + Yahoo! Browser%%
 
STAGE 4: Patch
 . 7-Zip                         v9.20
 . Adobe Flash Player            v14.0.0.145
 . Adobe Reader                  v11.0.07
 . Java Runtime Environment      8u5
 . Notepad++                     v6.6.7
 . Windows updates               <pulled down live>
 
STAGE 5: Optimize
 + smartctl                      v6.2 2013-07-26 r3841
 * Defraggler                    v2.18.945
 
STAGE 6: Manual tools
 . ADSSpy                        v1.11.0.0
 + AdwCleaner                    v3.2.1.4
 + aswMBR                        v1.0.1.2041
 * autoruns                      v12.0
 . ComboFix                      v14.7.3.1
 . gmer                          v2.1.19357
 - HiJackThis                    v2.0.4 -- REMOVED, functionality replaced by autoruns
 - Panda Cloud Security Scanner  -- REMOVED
 . TempFileCleaner               v3.1.9.0
 . VirusTotal uploader tool      v2.2
 
 
 
######################
# v1.2 // 2014-07-07 #
######################
tron.bat                         v1.2
 + stage_5_optimize:  Add detection of SSD drives. If drive is detected, post-run defrag is skipped. Thanks to /u/you_drown_now for help with this function.
 * stage_3_de-bloat:  Improve logic, logging, and robustness for WMIC removal section
 * tron.bat:          Improve overall logging, appearance and commenting. Added clarification screens for various Safe Mode states
 / Intro screen:      Adjust runtime estimates based on user feedback
 / tron.bat:          Disable post-run auto-reboot by default. Change "REBOOT_DELAY" variable if you wish to auto-reboot
 - tron.bat:          Remove section asking user if we want to do a post-run defrag (replaced by auto-detect)
 - stage_1_tempclean: Remove TempFileCleanup job (ccleaner and BleachBit cover this requirement)
 - stage_4_patch:     Remove /r flag on wuauclt command

STAGE 0: Prep
 . Rkill                         v2.6.7
 
STAGE 1: Tempclean
 - TempFileCleanup               REMOVED
 . CCLeaner                      v4.15.4725
 * BleachBit                     v1.2

STAGE 2: Disinfect
 . Malwarebytes Anti-malware     v2.0.2.1012
 . Sophos Virus Removal Tool     v2.5 (2014-07-06)
 . Vipre Rescue Scanner          v7.0.7.8
 
STAGE 3: De-bloat target keywords (%% = any number of characters wildcard)
These are specified in: \resources\stage_3_de-bloat\programs_to_target.txt
 . Acer%%
 + Adobe Shockwave%%
 + Advanced%%FX Engine
 + Akamai%%
 + Amazon Browser%%
 . Bing%%
 + Bonjour%%
 + Catalina Savings%%
 . Cyberlink%%
 + Dell Getting Started Guide%%
 + Dell Video%%
 . eBay%%
 . eMachines%%
 . Free Download Manager%%
 + HP Deskjet%%Help
 . Launch Manager%%
 + Lenovo%%
 + Live! Cam Avatar%%
 + Move Media%%
 + My HP%%
 + PowerDVD%%
 + RenWeb%%
 + Roxio%%
 + Sonic CinePlayer%%
 + %%Toolbar%%
 + UserGuide%%
 + Yahoo! Browser%%
 
STAGE 4: Patch
 . 7-Zip                         v9.20
 . Adobe Flash Player            v14.0.0.125
 . Adobe Reader                  v11.0.07
 . Java Runtime Environment      8u5
 . Notepad++                     v6.6.4
 . Windows updates               <pulled down live>
 
STAGE 5: Optimize
 + smartctl                      v6.2 2013-07-26 r3841
 * Defraggler                    v2.18.945
 
STAGE 6: Manual tools
 . ADSSpy                        v1.11.0.0
 + AdwCleaner                    v3.2.1.4
 . autoruns                      v11.70
 * ComboFix                      v14.7.3.1
 . gmer                          v2.1.19357
 . HiJackThis                    v2.0.4
 . Panda Cloud Security Scanner  updated 2014-07-03
 . TempFileCleaner               v3.1.9.0
 . VirusTotal uploader tool      v2.2

 

######################
# v1.1 // 2014-07-06 #
######################
tron.bat                         v1.1
 * tron.bat:          Comment, log and syntax cleanup
 + tron.bat:          Add section to ask if we want to do a post-run defrag, and skip the defrag if the user says no
 * tron.bat:          Remove hard requirement to run in safe mode and added code to detect various Safe Mode states
 * stage_3_de-bloat:  Convert section to read from a text list located in resource\stage_3_de-bloat\programs_to_target.txt
 + stage_3_de-bloat:  Add additional programs to find and remove
 + stage_3_de-bloat:  Add line to remove Adobe Shockwave (not in wide use anymore)
 - stage_4_patch:     Remove installation of Adobe Shockwave

STAGE 0: Prep
 . Rkill                         v2.6.7
 
STAGE 1: Tempclean
 . TempFileCleanup               v3.1
 . CCLeaner                      v4.15.4725
 * BleachBit                     v1.2

STAGE 2: Disinfect
 . Malwarebytes Anti-malware     v2.0.2.1012
 . Sophos Virus Removal Tool     v2.5 (2014-07-06)
 . Vipre Rescue Scanner          v7.0.7.8
 
STAGE 3: De-bloat target keywords (%% = any number of characters wildcard)
These are specified in: \resources\stage_3_de-bloat\programs_to_target.txt
 . Acer%%
 + Adobe Shockwave%%
 + Advanced%%FX Engine
 + Akamai%%
 + Amazon Browser%%
 . Bing%%
 + Bonjour%%
 + Catalina Savings%%
 . Cyberlink%%
 + Dell Getting Started Guide%%
 + Dell Video%%
 . eBay%%
 . eMachines%%
 . Free Download Manager%%
 + HP Deskjet%%Help
 . Launch Manager%%
 + Lenovo%%
 + Live! Cam Avatar%%
 + Move Media%%
 + My HP%%
 + PowerDVD%%
 + RenWeb%%
 + Roxio%%
 + Sonic CinePlayer%%
 + %%Toolbar%%
 + UserGuide%%
 + Yahoo! Browser%%
 
STAGE 4: Patch
 . 7-Zip                         v9.20
 . Adobe Flash Player            v14.0.0.125
 . Adobe Reader                  v11.0.07
 - Adobe Shockwave               v12.1.2.152 -- REMOVED
 . Java Runtime Environment      8u5
 . Notepad++                     v6.6.4
 . Windows updates               <pulled down live>
 
STAGE 5: Optimize
 * Defraggler                    v2.18.945
 
STAGE 6: Manual tools
 . ADSSpy                        v1.11.0.0
 + AdwCleaner                    v3.2.1.4
 . autoruns                      v11.70
 * ComboFix                      v14.7.3.1
 . gmer                          v2.1.19357
 . HiJackThis                    v2.0.4
 . Panda Cloud Security Scanner  updated 2014-07-03
 . TempFileCleaner               v3.1.9.0
 . VirusTotal uploader tool      v2.2

 

######################
# v1.0 // 2014-07-04 #
######################
tron.bat                         v1.0

STAGE 0: Prep
 . Rkill                         v2.6.7
 
STAGE 1: Tempclean
 . TempFileCleanup               v3.1
 . CCLeaner                      v4.15.4725
 . BleachBit                     v1.0

STAGE 2: Disinfect
 . Malwarebytes Anti-malware     v2.0.2.1012
 . Sophos Virus Remval Tool      v2.5 (2014-07-02)
 . Vipre Rescue Scanner          v7.0.7.8
 
STAGE 3: De-bloat target keywords
 . Acer*
 . My HP*
 . Free Download Mananger*
 . Cyberlink*
 . eMachines*
 . Bing*
 . eBay*
 . Launch Manager*
 
STAGE 4: Patch
 . 7-Zip                         v9.20
 . Adobe Flash Player            v14.0.0.125
 . Adobe Reader                  v11.0.07
 . Adobe Shockwave               v12.1.2.152
 . Java Runtime Environment      8u5
 . Notepad++                     v6.6.4
 . Windows updates               <pulled down live>
 
STAGE 5: Optimize
 . defraggler                    v2.16.0.809
 
STAGE 6: Manual tools
 . ADSSpy                        v1.11.0.0
 . autoruns                      v11.70
 . ComboFix                      v14.6.30.1
 . gmer                          v2.1.19357
 . HiJackThis                    v2.0.4
 . Panda Cloud Security Scanner  updated 2014-07-03
 . TempFileCleaner               v3.1.9.0
 . VirusTotal uploader tool      v2.2
