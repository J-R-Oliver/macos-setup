# Visual Studio Code

## Plugins

### Live Share Extension Pack

This extension pack includes everything to collaboratively edit and debug in real time, including integrated audio and text chat. Plugin can be installed from [here](https://marketplace.visualstudio.com/items?itemName=MS-vsliveshare.vsliveshare-packP{\]}).

nce installed login using GitHub credentials. If a WorkSpace has been created for the repository Visual Studio Code can be set to change colour whilst hosting or viewing a live share.

```
Peacock: Change Live Share Color (Host) 
Peacock: Change Live Share Color (Guest) 
```

### Visual Studio IntelliCode

The Visual Studio IntelliCode extension provides AI-assisted development features for Python, TypeScript/JavaScript and Java developers in Visual Studio Code, with insights based on understanding your code context combined with machine learning. Plugin can be installed from [here](https://marketplace.visualstudio.com/items?itemName=VisualStudioExptTeam.vscodeintellicode).

### Bracket Pair Colorizer 2

This extension allows matching brackets to be identified with colours. Plugin can be installed from [here](https://marketplace.visualstudio.com/items?itemName=CoenraadS.bracket-pair-colorizer-2).

### indent-rainbow

This extension colorizes the indentation in front of your text alternating four different colors on each step. Plugin can be installed from [here](https://marketplace.visualstudio.com/items?itemName=oderwat.indent-rainbow).

### Live Server

This extension launches a local development server with live reload feature for static & dynamic pages. Plugin can be installed from [here](https://marketplace.visualstudio.com/items?itemName=ritwickdey.LiveServer).

### Import Cost 

This extension will display inline in the editor the size of the imported package. Plugin can be installed from [here](https://marketplace.visualstudio.com/items?itemName=ritwickdey.LiveServer).

### Jest Snippets

This extension provides jest snippets which can be triggered using the `tab` key. Plugin can be installed from [here](https://marketplace.visualstudio.com/items?itemName=wix.vscode-import-cost).

### ES6 Snippets

This extension provides ES6 snippets which can be triggered using the `tab` key. Plugin can be installed from [here](https://marketplace.visualstudio.com/items?itemName=xabikos.JavaScriptSnippets&ssr=false#review-details).

### Express Snippets

This extension provides Express snippets which can be triggered using the `tab` key. Plugin can be installed from [here](https://marketplace.visualstudio.com/items?itemName=vladmrnv.expresssnippet).

### vscode-icons

Adds an additional icon pack to VS Code. To change the icon: `cmd + p -> > Preferences: File Icon Theme -> VSCode Icons`.
They can be installed from [here](https://marketplace.visualstudio.com/items?itemName=vscode-icons-team.vscode-icons).

### Prettier - Code formatter

The [Prettier Plugin](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode) allows a global or local installation of the Prettier npm package to reformat code without having to run Prettier from the command line. The following settings allow for format on save for specific languages:

```json
// Set the default
"editor.formatOnSave": false,
// Enable per-language
"[javascript]": {
    "editor.formatOnSave": true
}
```

### ESLint

Integrates ESLint JavaScript into VS Code. This means VS Code will underline errors or warning brough back by ESLint in real time. Plugin can be installed from [here](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint).

### Settings 

```json
{
    "workbench.startupEditor": "readme",
    "editor.minimap.enabled": false,
    "editor.formatOnSave": false,
    "[javascript]": {
        "editor.formatOnSave": true
    }
}
```
