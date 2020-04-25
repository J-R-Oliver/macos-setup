# Prettier & ESLint

## ESLint Plugins

**node.js** 

Full guide [here](https://github.com/mysticatea/eslint-plugin-node).

`npm i -D eslint-plugin-node` - Installation

```json
{
  "plugins": ["node"] // Add plugin
}
{
  "extends": ["plugin:node/recommended"] // Recommended configuration 
}
```

**node.js - Security** 

Full guide [here](https://github.com/nodesecurity/eslint-plugin-security).

`npm i -D eslint-plugin-security` - Installation

```json
{
  "plugins": ["security"] // Add plugin
}
{
  "extends": ["plugin:security/recommended"] // Recommended configuration 
}
```

**Jest** 

Full guide [here](https://www.npmjs.com/package/eslint-plugin-jest).

`npm i -D eslint-plugin-jest` - Installation

```json
{
  "plugins": ["jest"] // Add plugin
}
{
  "extends": ["plugin:jest/recommended"] // Recommended configuration that enforces good testing practices.
}
{
  "extends": ["plugin:jest/style"] // Minimal stylistic rules
}
```

**Jest - Formatting**

Full guide [here](https://github.com/dangreenisrael/eslint-plugin-jest-formatting).

`npm i -D eslint-plugin-jest-formatting` - Installation

```json
{
  "plugins": ["jest-formatting"] // Add plugin
}
{
  "extends": ["plugin:jest-formatting/recommended"] // Recommended settings
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
  }
}
```

5. Create `.prettierrc.json` file in your project’s root directory:

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
