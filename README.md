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

## Brew Packages 

- [Git](https://git-scm.com) 
- [Node](https://nodejs.org/en/)
- [PostgreSQL](https://www.postgresql.org/)
- [Tree](http://mama.indstate.edu/users/ice/tree/)
- [zsh](https://www.zsh.org/)
- [oh-my-zsh](https://ohmyz.sh/)

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
iTerm2 -> Preferences -> Profiles -> Window -> Style -> No Title Bar
iTerm2 -> Preferences -> General -> Closing -> Confirm Quit iTerm2 [Off] / Confirm closing multiple sessions [Off]
```

## Script

The location the script file is [here](setupscript.sh). Before running the script the permissions will need to be changed to make it executable. 
```bash
chmod +x setupscript.sh
```

## Potential Improves

- Move from iTerm2 to modified Terminal layout.
- Set background.
- Set Launchpad layout.
- Set Dock layout.
