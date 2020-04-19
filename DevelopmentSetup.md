# Development Setup

## Visual Studio Code

### Plugins

#### Live Share Extension Pack

This extension pack includes everything to collaboratively edit and debug in real time, including integrated audio and text chat.

Plugin can be installed from [here](https://marketplace.visualstudio.com/items?itemName=MS-vsliveshare.vsliveshare-packP{\]}). Once installed login using GitHub credentials.

Once a WorkSpace has been created for the repository Visual Studio Code can be set to change colour whilst hosting or viewing a live share.

```
Peacock: Change Live Share Color (Host) 
Peacock: Change Live Share Color (Guest) 
```

#### Visual Studio IntelliCode

The Visual Studio IntelliCode extension provides AI-assisted development features for Python, TypeScript/JavaScript and Java developers in Visual Studio Code, with insights based on understanding your code context combined with machine learning. Plugin can be installed from [here](https://marketplace.visualstudio.com/items?itemName=VisualStudioExptTeam.vscodeintellicode).

#### Bracket Pair Colorizer 2

This extension allows matching brackets to be identified with colours. Plugin can be installed from [here](https://marketplace.visualstudio.com/items?itemName=CoenraadS.bracket-pair-colorizer-2).

#### indent-rainbow

This extension colorizes the indentation in front of your text alternating four different colors on each step. Plugin can be installed from [here](https://marketplace.visualstudio.com/items?itemName=oderwat.indent-rainbow).

#### Live Server

This extension launches a local development server with live reload feature for static & dynamic pages. . Plugin can be installed from [here](https://marketplace.visualstudio.com/items?itemName=ritwickdey.LiveServer).

#### Jest Snippets

This extension provides jest snippets which can be triggered using the `tab` key. Plugin can be installed from [here](https://marketplace.visualstudio.com/items?itemName=andys8.jest-snippets).

#### ES6 Snippets

This extension provides ES6 snippets which can be triggered using the `tab` key. Plugin can be installed from [here](https://marketplace.visualstudio.com/items?itemName=xabikos.JavaScriptSnippets&ssr=false#review-details).

#### Express Snippets

This extension provides Express snippets which can be triggered using the `tab` key. Plugin can be installed from [here](https://marketplace.visualstudio.com/items?itemName=vladmrnv.expresssnippet).

#### vscode-icons

Adds an additional icon pack to VS Code. To change the icon: `cmd + p -> > Preferences: File Icon Theme -> VSCode Icons`.
They can be installed from [here](https://marketplace.visualstudio.com/items?itemName=vscode-icons-team.vscode-icons).

#### Prettier - Code formatter

The [Prettier Plugin](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode) allows a global or local installation of the Prettier npm package to reformat code without having to run Prettier from the command line. The following settings allow for format on save for specific languages:

```json
// Set the default
"editor.formatOnSave": false,
// Enable per-language
"[javascript]": {
    "editor.formatOnSave": true
}
```

#### ESLint

Integrates ESLint JavaScript into VS Code. This means VS Code will underline errors or warning brough back by ESLint in real time. Plugin can be installed from [here](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint).

### VS Code settings 

The following settings are as follows. These can be accessed by entering `cmd + P -> >Preferences: Open Settings (JSON)`

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

## node.js Packages

### nodemon

[nodemon](https://www.npmjs.com/package/nodemon) is a tool that helps develop node.js based applications by automatically restarting the node application when file changes in the directory are detected. 

`npm install -D nodemon`: To install nodemon as a development dependency.

`npx nodemon [your node app]`: To start nodemon on specified file.

If you have a package.json file for your app, you can omit the main script entirely and nodemon will read the package.json for the main property and use that value as the app.

### Prettier

[Prettier](https://prettier.io) is an opinionated code formatter. It removes all original styling and ensures that all outputted code conforms to a consistent style. 

`npm install --save-dev --save-exact prettier`: Installs Prettier as a development dependency and saves the exact version to the package.json. They recommend pinning an exact version of prettier in your package.json as they introduce stylistic changes in patch releases.

To change the settings for Prettier create a `.prettierrc.json` file in the root of your repository.

```json
{
  "semi": true,
  "tabWidth": 4,
  "trailingComma": "none",
  "singleQuote": true,
  "arrowParens": "avoid"
}
```

### ESLint 

`npm install eslint --save-dev`: Installs ESLint as development dependency 

`npx eslint --init`: Initialises ESlint and creates a configuration file. This file is called `.eslintrc.json` and will be created at the root of the repository. Such as:

```json
{
    "parserOptions": {
        "ecmaVersion": 6,
        "sourceType": "module",
        "ecmaFeatures": {
            "jsx": true
        }
    },
    "rules": {
        "semi": "error"
    }
}
```

## Prettier + ESLint + Airbnb Style Guide

Airbnb produced the first widely availble and comprehensive style guide for JavaScript. It contains many rules on both formatting and implementation. It is availible [here](https://github.com/airbnb/javascript#types).

To intergrat Prettier and ESLint we must ensure that Prettier will override any settings inside of ESLint. We can then install any rule set, set as Airbnb, into ESLint. Please refer to [this](https://blog.echobind.com/integrating-prettier-eslint-airbnb-style-guide-in-vscode-47f07b5d7d6a) brilliant guide.

A summary of this process: 

1. `npm install -D eslint prettier`
2. `npx install-peerdeps --dev eslint-config-airbnb`
3. `npm install -D eslint-config-prettier eslint-plugin-prettier`
4. Create the `.eslintrc.json` file in your project’s root directory:

```json
{
  "extends": ["airbnb", "prettier"],
  "plugins": ["prettier"],
  "rules": {
    "prettier/prettier": ["error"]
  },
}
```

5. Create .prettierrc file in your project’s root directory:

```json
{
  "semi": true,
  "tabWidth": 4,
  "trailingComma": "none",
  "singleQuote": true,
  "arrowParens": "avoid"
}
```

This process can also be automated with the following command: 

`exec 3<&1;bash <&3 <(curl https://raw.githubusercontent.com/paulolramos/eslint-prettier-airbnb-react/master/eslint-prettier-config.sh 2> /dev/null)`

This command was created by in [this repo](https://github.com/paulolramos/eslint-prettier-airbnb-react).
