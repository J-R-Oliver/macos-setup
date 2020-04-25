# Node Packages 

## Winston 

Winston is designed to be a simple and universal logging library with support for multiple locations. More information can be found [here](https://github.com/winstonjs/winston).

## EJS 

EJS is a simple templating language that lets you generate HTML markup with plain JavaScript. More information can be found [here](https://ejs.co).

## Inquirer.js

Inquirer.js strives to be an easily embeddable and beautiful command line interface for Node.js. More information can be found [here](https://www.npmjs.com/package/inquirer).

## nodemon

[nodemon](https://www.npmjs.com/package/nodemon) is a tool that helps develop node.js based applications by automatically restarting the node application when file changes in the directory are detected. 

`npx nodemon [your node app]`: To start nodemon on specified file.

## Jest 

Jest is a delightful JavaScript Testing Framework with a focus on simplicity. More information can be found [here](https://jestjs.io).

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

ESLint statically analyzes your code to quickly find problems.

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
