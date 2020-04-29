# Node Packages 

## Express 

Fast, unopinionated, minimalist web framework for Node.js. More information can be found [here](http://expressjs.com).

## node-postgres

node-postgres is a collection of node.js modules for interfacing with your PostgreSQL database. More information can be found [here](https://node-postgres.com).

## Knex.js

Knex.js is a "batteries included" SQL query builder for Postgres, MSSQL, MySQL, MariaDB, SQLite3, Oracle, and Amazon Redshift designed to be flexible, portable, and fun to use. It as acts as an overlay for node SQL packages such as node-postgres. More information can be found [here](http://knexjs.org).

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

## supertest

HTTP assertions made easy via superagent. Great for calling API inside test blocks and returning information for assertions. More information can be found [here](https://www.npmjs.com/package/supertest).

## Husky 

Git hooks made easy@ Husky can prevent bad git commits by automating testing or linting before a commit run. The commit will fail to start if any errors are found. More information can be found [here](https://github.com/typicode/husky).

## Prettier

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

## ESLint 

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

## Prettier Standard

Formats with prettier and lints with eslint preconfigured with standard rules. More information can be found [here](https://github.com/sheerun/prettier-standard). A VS Code extension also exists [here](https://marketplace.visualstudio.com/items?itemName=numso.prettier-standard-vscode).