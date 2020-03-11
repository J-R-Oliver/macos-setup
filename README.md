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


## Brew Packages 

- [Git](https://git-scm.com) 
- [Node](https://nodejs.org/en/)
- [PostgreSQL](https://www.postgresql.org/)
- [Tree](http://mama.indstate.edu/users/ice/tree/)
- [zsh](https://www.zsh.org/)
- [oh-my-zsh](https://ohmyz.sh/)


## Fix for '[oh-my-zsh] Insecure completion-dependent directories detected'

Following command fixes any errors returned by compaudit.

```bash
compaudit | xargs chmod g-w,o-w
```

## Change Oh My ZSH Theme

The script changes the theme to [ys](https://blog.ysmood.org/my-ys-terminal-theme/).

## Script

The location the script file is [here](setupscript.sh). Before running the script the permissions will need to be changed to make it executable. 
```bash
chmod +x setupscript.sh
```

## Potential Improves

- Move from iTerm2 to modified Terminal layout.
- Set Launchpad layout.
- Set Dock layout.
