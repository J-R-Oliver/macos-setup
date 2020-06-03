# StyleLint

## Installation

The following command installs styelint:

`npm install -D stylelint`

## Stylelint Plugins

Plugins - provide stylint with additional rules that can be configured as desired.
Extends - uses a config file that will apply a set of rules.

**stylelint-config-recommended**

Full guide [here](https://github.com/stylelint/stylelint-config-recommended).

`npm install stylelint-config-recommended --save-dev`

```json
{
  "extends": "stylelint-config-recommended"
}
```

**stylelint-config-standard**

Full guide [here](https://github.com/stylelint/stylelint-config-standard).

`npm install stylelint-config-standard --save-dev`

```json
{
  "extends": "stylelint-config-standard"
}
```

**stylelint-order**

Full guide [here](https://github.com/hudochenkov/stylelint-order).

`npm install stylelint-order --save-dev`

```json
{
  "plugins": ["stylelint-order"]
}
```

**idiomatic-order**

Full guide [here](https://github.com/ream88/stylelint-config-idiomatic-order).

`npm install --save-dev stylelint-config-idiomatic-order`

```json
{
  "extends": "stylelint-config-idiomatic-order"
}
```

**stylelint-config-idiomatic-css**

Full guide [here](https://github.com/itslooklike/stylelint-config-idiomatic-css#readme).

`npm install --save-dev stylelint-config-idiomatic-css`

```json
{
  "extends": ["stylelint-config-idiomatic-css"]
}
```

**stylelint-config-styled-components**

Full guide [here](https://styled-components.com/docs/tooling#stylelint).

`npm install --save-dev stylelint-config-styled-components`

```json
{
  "extends": ["stylelint-config-styled-components"]
}
```

## Example Config

Example config in `.stylelintrc.json`:

```json
{
  "extends": [
    "stylelint-config-standard",
    "stylelint-config-styled-components",
    "stylelint-config-idiomatic-order"
  ]
}
```
