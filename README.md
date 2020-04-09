# MacOSSetup
Repository for MacOS setup scripts and notes.

## MacOS Applications
 
- [Brew](https://brew.sh/) 
- [Virtual Studio Code](https://code.visualstudio.com) 
- [Slack](https://slack.com) 
- [iTerm2](https://iterm2.com)
- [Google Chrome](https://www.google.com/chrome/) 
- [Postman](https://www.postman.com) 
- [GIMP](https://www.gimp.org)
- [zoom.us](https://zoom.us)
- [Discord](https://discordapp.com)
- [fliqlo](https://fliqlo.com)
- [Logitech Options](https://www.logitech.com/en-us/product/options)

## Brew Packages 

- [Git](https://git-scm.com) 
- [Node](https://nodejs.org/en/)
- [PostgreSQL](https://www.postgresql.org/)
- [Tree](http://mama.indstate.edu/users/ice/tree/)
- [zsh](https://www.zsh.org/)
- [oh-my-zsh](https://ohmyz.sh/)
- [http-server](https://github.com/http-party/http-server#readme) (Currently not installed)

## Brew Taps (Third-Party Repositories)

- [Casks of drivers](https://github.com/Homebrew/homebrew-cask-drivers)

## ZSH Plugins

- [Oh My Zsh Auto suggestions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md)
- [ZSH Syntax Highlighting](https://medium.com/@Clovis_app/configuration-of-a-beautiful-efficient-terminal-and-prompt-on-osx-in-7-minutes-827c29391961)


## Fix for '[oh-my-zsh] Insecure completion-dependent directories detected'

Following command fixes any errors returned by compaudit.

```bash
compaudit | xargs chmod g-w,o-w
```

## Change Oh My ZSH Theme

The script changes the theme to [ys](https://blog.ysmood.org/my-ys-terminal-theme/).

## Change iTerm Settings

Your unable to change the default settings for iTerm programmatically. The following changes will need done through the GUI.

```
iTerm2 -> Preferences -> Appearance -> Windows -> Hide scrollbars
iTerm2 -> Preferences -> Profiles -> Window -> Style -> No Title Bar
iTerm2 -> Preferences -> General -> Closing -> Confirm Quit iTerm2 [Off] / Confirm closing multiple sessions [Off]
```

## Change macOS Settings

* Set Dekstop Background (Background heic file is storage inside the Documents folder and synced through iCloud).
* Enable Fliqlo screen saver, and set dispaly and sleep settings.
* Enable Night Shift.
* Enable Apple Watch unlock.

```
System Preferences -> Displays -> Night Shift -> Schedule: Sunset to Sunrise
System Preferences -> Desktop & Screen Saver -> Desktop -> Add Documents
System Preferences -> Desktop & Screen Saver -> Screen Saver -> Fliqlo / Start after: 5 Minutes
System Preferences -> Energy Saver -> Battery -> Turn display off after: 1 hour 30 minutes
System Preferences -> Energy Saver -> Power Adapter -> Turn display off after: 1 hour 30 minutes
System Preferences -> Displays -> Night Shift -> Schedule: Sunset to Sunrise
System Preferences -> Security & Privacy -> Use your Apple Watch to unlock apps and your Mac
```

## Executing Script

The location the script file is [here](setupscript.sh). Before running the script the permissions will need to be changed to make it executable. 
```bash
chmod +x setupscript.sh
```

## Visual Studio Code Plugins

### Live Share Extension Pack

This extension pack includes everything to collaboratively edit and debug in real time, including integrated audio and text chat.

Plugin can be installed from [here](https://marketplace.visualstudio.com/items?itemName=MS-vsliveshare.vsliveshare-packP{\]}). Once installed login using GitHub credentials.

Once a WorkSpace has been created for the repository Visual Studio Code can be set to change colour whilst hosting or viewing a live share.

```
Peacock: Change Live Share Color (Host) 
Peacock: Change Live Share Color (Guest) 
```

### Bracket Pair Colorizer 2

This extension allows matching brackets to be identified with colours. Plugin can be installed from [here](https://marketplace.visualstudio.com/items?itemName=CoenraadS.bracket-pair-colorizer-2).

## Google Chrome Plugins

### axe - Web Accessibility Testing

Accessibility Checker for Developers in Chrome. Install plugin from [here](https://chrome.google.com/webstore/detail/axe-web-accessibility-tes/lhdoppojpmngadmnindnejefpokejbdd).

## macOS Notes

* macOS will automatically put the computer to sleep when the device is not powered. The following commands will change this. **Please note** that disalbing sleep will keep the laptop running even when no external display or device is connected. 

```
Display global power settings: pmset -g
Disable sleep: sudo pmset -a disablesleep 1
Enable sleep: sudo pmset -a disablesleep 0
```

* Screen sharing is natively built into macOS. To remotely connect to a mac search for *Screen Sharing*  from Spotlight and then enter the Hostname or Apple ID.

* ```code``` command not working? The command can be reinstall from Visual Studio Code. The command, ```code .```, will open VS Code at that file location. To re-install:

```
Visual Studio Code -> View -> Show Command Palette... ->  Shell Command: Install 'code' command in PATH
```

## UGREEN: USB3.0 to 1GB Ethernet Adapter 

* Drive can be downloaded from the UGREEN website or installed with `brew cask install ugreen-ax88179-usb-ethernet-driver`.

## NC HelpDesk

NC HelpDesk is a light node application to create and send helpdesk tickets for help with coursework. To install ```clone``` repository from [here](https://github.com/northcoders/nc-helpdesk) and follow setup instructions in the README.

## Potential Improves

- Move from iTerm2 to modified Terminal layout.
- Set background.
- Set Launchpad layout.
- Set Dock layout.
